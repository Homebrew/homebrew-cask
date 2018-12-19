cask 'aether' do
  version '2.0.0-dev.6,1811231746.7e1936d8'
  sha256 'db8c1d499b04225ea10fd1869f996dd8cf83befe0bcc60b5ee8022af6a7fd77c'

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://getaether.net/dlstarted/'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
