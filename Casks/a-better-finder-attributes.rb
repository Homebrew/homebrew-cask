cask 'a-better-finder-attributes' do
  version '6.10'
  sha256 '63e00cda76bf62d52d42726d981a03be8b09069d2dfa0546cc55d296382f848f'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml"
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
               "~/Library/Caches/net.publicspace.abfa#{version.major}",
               "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
               "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
               "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
             ]
end
