cask 'manager' do
  version '18.8.85'
  sha256 '1071bcd00edb3d4cc369f961d2c91859bcdc22fc4ee922b7af6da058788030ea'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
