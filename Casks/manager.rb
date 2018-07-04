cask 'manager' do
  version '18.7.3'
  sha256 '80e04b650ca0f9507693c8b3dec3ea81a06301378e5dab86070e24c77884adb3'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
