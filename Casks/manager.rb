cask 'manager' do
  version '18.11.64'
  sha256 'dbe6b8b8534da699387f6fd39082e2085600b2e5751c1fc89c2bdebe35d2b0c5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
