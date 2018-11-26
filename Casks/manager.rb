cask 'manager' do
  version '18.11.50'
  sha256 '8dedc4dc55f90abdf0418159860599668012d41fd6d87d5f9a2eab82367813a3'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
