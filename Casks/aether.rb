cask 'aether' do
  version '2.0.0-dev.13,1906191901.7eaf250'
  sha256 '2a6f02a5e4255d15e57225a76d26ae8d0063dcbf96a6a74848eea26e6d392f95'

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://static.getaether.net/WebsiteReleaseLinks/Latest/LatestReleaseLinks.json'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
