cask 'manager' do
  version '18.11.29'
  sha256 '4d7a0c76ac01c9303ee31b0e8da859e01a7a0ad6d0a8bee01a2e469abc31b0f1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
