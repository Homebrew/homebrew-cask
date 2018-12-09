cask 'manager' do
  version '18.11.66'
  sha256 'a8ea5e3d6e17163c06a4b2c00897887a1ac35f197ecc09388bfdbaedef0d6207'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
