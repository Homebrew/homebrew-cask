cask 'a-better-finder-attributes' do
  version '6.18'
  sha256 'ca0b8bdf5d6e9e2a78649e0709dc8d15a0d796ddb3b9331272333bcba35cf480'

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
