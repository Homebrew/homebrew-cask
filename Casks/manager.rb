cask 'manager' do
  version '18.10.49'
  sha256 '10c0379be4c1a8e0cfec36654fd59bb060e1800a083f3f22613bda9fcc355b4b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
