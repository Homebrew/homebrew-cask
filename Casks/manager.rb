cask 'manager' do
  version '18.5.92'
  sha256 '9edc5c691d284bbbf10844d2b3899eb69667ceed8ff682f9cf4a01edada075b9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
