cask 'manager' do
  version '18.10.76'
  sha256 'b2ef902a03e30b042aa7a784d55d2bec08902573f29d2a750226338d0dd915c1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
