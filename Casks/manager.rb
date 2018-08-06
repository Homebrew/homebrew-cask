cask 'manager' do
  version '18.7.85'
  sha256 '7ef8fe1c4556e13093710262dd479855724331a070e1864b59d481f9835b2feb'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
