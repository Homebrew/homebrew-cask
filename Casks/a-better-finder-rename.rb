cask 'a-better-finder-rename' do
  version '10.21'
  sha256 'f554eeb91e8d17ca64512f525fa499b25c4838a49c81bc151f4e5576231ac8b5'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: 'b2cc5cff8b79ed35bd1a0c27e50b29c34b311f06714772d6862bcb3e5cce65f6'
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
