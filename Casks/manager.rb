cask 'manager' do
  version '18.12.24'
  sha256 '177a280e7c3da84e9756bc97908b67a2665a3fda8bc6fd2c0c27c279daaf98ab'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
