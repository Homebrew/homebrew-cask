cask 'manager' do
  version '18.5.62'
  sha256 '62f7c1ef3928c7397c81e8ad3d4ed359c531315367eecd6de8b209711a510a35'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
