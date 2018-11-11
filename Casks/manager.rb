cask 'manager' do
  version '18.11.13'
  sha256 '578664e66e0d04d7f2d3ae497046ec83e24731d92f69ed70c621d5a25b02fc8c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
