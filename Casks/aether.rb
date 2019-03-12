cask 'aether' do
  version '2.0.0-dev.11,1902221558.a6b3c4a8'
  sha256 '6cf1807ef39f7b8da1034fb1140acc467aee9eadaaf36c567dbcbda70aa9e77f'

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://static.getaether.net/WebsiteReleaseLinks/Latest/LatestReleaseLinks.json'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
