cask 'aether' do
  version '2.0.0-dev.9,1902131456.97bf3870'
  sha256 '3bb23fb85c25c7e61f540aa5bff709852f2278252369ec68f825294c19f8e8f2'

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://getaether.net/dlstarted/'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
