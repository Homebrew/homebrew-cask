cask 'manager' do
  version '18.5.64'
  sha256 '57a26722f722b7c0043fb54d988263b23e43149c2bde16101ded73f8636d2c34'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
