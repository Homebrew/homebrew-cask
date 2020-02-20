cask 'a-better-finder-attributes' do
  version '6.21'
  sha256 'cb31226e4c7d137a5f6357b3ca75dc1c25b6b88c51ec1d065ffdd553224e1338'

  url 'https://www.publicspace.net/download/ABFAX.dmg'
  appcast "https://www.publicspace.net/app/signed_abfa#{version.major}.xml"
  name 'A Better Finder Attributes'
  homepage 'https://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
               "~/Library/Caches/net.publicspace.abfa#{version.major}",
               "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
               "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
               "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
             ]
end
