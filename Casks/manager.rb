cask 'manager' do
  version '18.8.46'
  sha256 '0aa19b535fb2baa23f6a77fbb0f82f1c2364573544491b4d03736a29a9052d12'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
