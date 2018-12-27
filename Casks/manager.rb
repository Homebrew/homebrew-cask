cask 'manager' do
  version '18.12.17'
  sha256 '04f432048add34aa58f783ddd41c2b8d2b732a0c7cb2d336708401e4f6eab56b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
