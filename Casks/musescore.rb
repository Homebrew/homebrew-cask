cask 'musescore' do
  version '2.3.2'
  sha256 '67eb15707c2aff816dce25f1b91c7381184fa3a4bd731c76a3c963bfb110a4fa'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  appcast 'https://ftp.osuosl.org/pub/musescore/releases/'
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: 'mscore'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end
