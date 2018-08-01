cask 'manager' do
  version '18.7.75'
  sha256 'c110be8b27af0a1339dbea5174176ad7ee5419421a2510b7811b63171bb92e13'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
