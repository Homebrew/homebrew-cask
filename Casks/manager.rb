cask 'manager' do
  version '18.9.14'
  sha256 'b6dd9a5b43ddd418b69e46138472600398504be07a426f12be93c24b2325b53e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
