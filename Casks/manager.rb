cask 'manager' do
  version '18.7.87'
  sha256 'f988547c660543851c6009d4392f28b54e9d11bf9f10557e36e0960eecc4de36'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
