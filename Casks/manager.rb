cask 'manager' do
  version '18.9.60'
  sha256 '5acff0573224840eae841aad4057ea56b6ee0d762a4da28946a55283c24d55d9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
