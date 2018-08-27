cask 'manager' do
  version '18.8.63'
  sha256 'ea4a921214f7ddc05eb7f98435ba35f47d2d2f432af34a6dea2fa7225c1cf1d3'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
