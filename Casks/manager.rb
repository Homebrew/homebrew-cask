cask 'manager' do
  version '18.10.45'
  sha256 '8d6321d749fa53951ecb1655438885bf5e91970ad18193de819e6de2a016352d'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
