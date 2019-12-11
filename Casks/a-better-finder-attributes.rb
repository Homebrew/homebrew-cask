cask 'a-better-finder-attributes' do
  version '6.20'
  sha256 '391b380193d3e225c9a5b877a0c5f783b2e6d5327b392762cf63aec4e4e82b36'

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
