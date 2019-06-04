cask 'musicbrainz-picard' do
  version '2.1.3'
  sha256 '91d0f06b9efdf2d23830068e329115ad5133038ea2586c1091c581d09d7bfec8'

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz.Picard.#{version}.dmg"
  appcast 'https://picard.musicbrainz.org/changelog/'
  name 'MusicBrainz Picard'
  homepage 'https://picard.musicbrainz.org/'

  depends_on macos: '>= :yosemite'

  app 'MusicBrainz Picard.app'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/picard.wrapper.sh"
  binary shimscript, target: 'picard'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MusicBrainz Picard.app/Contents/MacOS/picard' "$@"
    EOS
  end

  zap trash: [
               '~/.config/MusicBrainz',
               '~/Library/Caches/MusicBrainz',
               '~/Library/Preferences/org.musicbrainz.picard.plist',
               '~/Library/Saved Application State/org.musicbrainz.picard.savedState',
             ]
end
