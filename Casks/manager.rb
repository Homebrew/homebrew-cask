cask 'manager' do
  version '19.1.33'
  sha256 'a3a1cfff3fa59567630f8b61b97c67d1f72337c2a498f86d0f2c8c02dd4aaade'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
