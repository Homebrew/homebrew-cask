cask 'a-better-finder-rename' do
  version '10.28'
  sha256 '68481506c2635e8587bc6886ff3f999d3e66d346ba7123fc8a40bbf5b9c8ddbe'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '6ac3d65d54904542b8d8fac55c692424d9a33c7e781930e9fe6683ffd5b8c386'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "A Better Finder Rename #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/A Better Finder Rename #{version.major}",
               "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help*",
               "~/Library/Caches/net.publicspace.abfr#{version.major}",
               "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
               "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
               "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
             ]
end
