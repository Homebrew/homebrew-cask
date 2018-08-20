cask 'manager' do
  version '18.8.13'
  sha256 'dfa1fd71afba7632b4420e9fa0057d2c52d96084f27460e666967bce30625c6b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
