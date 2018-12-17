cask 'manager' do
  version '18.12.4'
  sha256 '09f7d38493c2a63912c8b9cf15715e3aee86e3fa86aec14585e5ab6a2a27ad83'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
