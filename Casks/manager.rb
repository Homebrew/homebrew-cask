cask 'manager' do
  version '18.9.35'
  sha256 '24a83e2ee1cbe7dca6b928889833ace932b0b5df8615d7df92f2d9ffa17a61f7'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
