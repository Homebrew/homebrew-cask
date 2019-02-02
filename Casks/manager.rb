cask 'manager' do
  version '19.1.34'
  sha256 '5330d8347f03ded08d0d044f39af772567234534a3b71b3d76a3973e2bf3efd0'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
