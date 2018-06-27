cask 'manager' do
  version '18.5.90'
  sha256 'cc9e5927bed9a8c835343161d239b0f411f655bab607aa9a97b88d4341e9cdf6'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
