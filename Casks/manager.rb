cask 'manager' do
  version '18.5.8'
  sha256 'cc1f9c251a19c9a716e036aaa7ad92f64ebe053930dfb3147bd16647b9a02637'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
