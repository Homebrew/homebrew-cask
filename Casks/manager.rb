cask 'manager' do
  version '18.9.94'
  sha256 'e0f4c2197e2e9fe3e3e7273ff9d020734c1e0779c4c789eab54c94c0a094b1e9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
