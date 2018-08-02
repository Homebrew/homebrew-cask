cask 'manager' do
  version '18.7.77'
  sha256 'a6ad7cd4a7f0bdbd382458b670a2c95b175bcd4c73fa4da92657487f2cdf50f5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
