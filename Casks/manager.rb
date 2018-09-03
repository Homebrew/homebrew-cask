cask 'manager' do
  version '18.8.87'
  sha256 'afc032fdf1036d7c090e86199e5d2dcf74556b20956c0766d502acd4b2c4db9b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
