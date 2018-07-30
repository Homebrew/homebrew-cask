cask 'manager' do
  version '18.7.73'
  sha256 'be5c96ecc919ca1006fdf7462399262f758f7252c92d4fd0bb8c9d71d24442a9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
