cask 'manager' do
  version '18.7.33'
  sha256 '71c2521f781df31d3995f3468bdf1a3437dfd4c65a830b00ac2a3418dfecd965'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
