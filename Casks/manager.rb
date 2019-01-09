cask 'manager' do
  version '19.1.3'
  sha256 '9e5e5bdede939f893f3d955d5302ba7ee015026594f0d1e067ecaff48215ff02'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
