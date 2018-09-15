cask 'manager' do
  version '18.9.50'
  sha256 '2b8cbf8cd3fa7f46e2ac5fab12eb3f36e7e66ceae8934b647882bde318307750'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
