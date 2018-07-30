cask 'musescore' do
  version '2.3.1'
  sha256 '6673507df422b4be77c3e62a3143d2c0b5b9d2f24e6bed22d2b747baa8d56318'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/musescore.wrapper.sh"
  binary shimscript, target: 'musescore'
  binary shimscript, target: 'mscore'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end
