cask 'a-better-finder-attributes' do
  version '6.22'
  sha256 '5a01dc9a4bd7383f2c9b09f36ad8cd2798ef16321c62b88488ae7980f09ddbbe'

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
