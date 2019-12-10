cask 'a-better-finder-attributes' do
  version '6.19'
  sha256 '593b5021397c4b5945c3ee2d8213a5fe17de6ac161cb41203dca4ad0efec789b'

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
