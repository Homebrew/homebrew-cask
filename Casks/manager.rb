cask 'manager' do
  version '18.9.13'
  sha256 'e583fdf23bd2200655078e842a9517ad5e9c3e28315ddb35a09f94669edd786a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
