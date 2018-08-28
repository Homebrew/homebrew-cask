cask 'manager' do
  version '18.8.71'
  sha256 'fc49449cbd8af7fda8394a9fe03ae68b8c6d3229dff4e70372a78c18fdb812ee'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
