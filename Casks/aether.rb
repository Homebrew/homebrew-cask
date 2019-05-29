cask 'aether' do
  version '2.0.0-dev.12,1904242038.68b25894'
  sha256 '80274498fb471a1fe2db07da2d950493fd594fb98fa7664f5631c47bcf84b17c'

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://static.getaether.net/WebsiteReleaseLinks/Latest/LatestReleaseLinks.json'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
