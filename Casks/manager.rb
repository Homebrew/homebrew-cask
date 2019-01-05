cask 'manager' do
  version '18.12.23'
  sha256 '6198400f7e6bdb2ef611d8c21aabb830aba70d78cb7ee66da99e3e8bedbbf561'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
