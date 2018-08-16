cask 'manager' do
  version '18.8.2'
  sha256 'fe7722b13d0b853d77f7857e3dd814228f260e796a43166c15547609c1c6c73c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
