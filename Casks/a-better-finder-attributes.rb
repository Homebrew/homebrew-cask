cask 'a-better-finder-attributes' do
  version '6.16'
  sha256 '68e087d640da32b9058f20e6b0027d1870b7610873f05453d53b42029351700a'

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
