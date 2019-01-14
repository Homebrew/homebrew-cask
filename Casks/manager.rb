cask 'manager' do
  version '19.1.11'
  sha256 'cefe0117d9f936fbb2f342bf250b7785880d60cfb00028941eecc57031f6c743'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
