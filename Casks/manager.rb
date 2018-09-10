cask 'manager' do
  version '18.9.27'
  sha256 '97f77a79dcd01a592ded484ff6c8b72450cf6d4928360df3c123c44e238cad31'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
