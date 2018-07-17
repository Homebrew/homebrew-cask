cask 'manager' do
  version '18.7.35'
  sha256 'acc5e318a4dc65407a375c6a4b2fa8a33cb22d4990b778836a9cebbe3c589075'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
