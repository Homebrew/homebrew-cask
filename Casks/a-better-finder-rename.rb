cask 'a-better-finder-rename' do
  version '10.16'
  sha256 '61da24ec1b86beea3430310882f5e2de94aec0b124faf74cb30614d9185bf916'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '10acec9e57aa30d03c1db01c3b20e9cab99e59f4dc754eed9f5d8850392b434a'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "A Better Finder Rename #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/A Better Finder Rename #{version.major}",
                "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help",
                "~/Library/Caches/net.publicspace.abfr#{version.major}",
                "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
                "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
                "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
              ]
end
