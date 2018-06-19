cask 'manager' do
  version '18.5.61'
  sha256 '9adb1a389ace723cad34aa5ea7cfe2dc3305eed17673916385f33726ce677af5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
