cask 'manager' do
  version '18.7.50'
  sha256 '51fced1805a35cec4d4d0ab8d3d732de6b3ae7e979286e4f7158b660950314a9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
