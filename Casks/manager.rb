cask 'manager' do
  version '18.11.36'
  sha256 '8529a40761b52437bda8091b3d7d38a793d891d215a5e604b332051fe87d0e75'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
