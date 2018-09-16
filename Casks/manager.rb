cask 'manager' do
  version '18.9.53'
  sha256 '9ee71f72bce47772f60f27a118c3a678d439d334a3a7892bf769caed8d9f5d8b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
