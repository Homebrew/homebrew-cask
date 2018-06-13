cask 'manager' do
  version '18.5.46'
  sha256 'af49a3036105643539860601ff0e68bcc788be3620635ceea1c9a8692997f27e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
