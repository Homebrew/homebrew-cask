cask 'manager' do
  version '18.7.13'
  sha256 'da11c726dfc3b7e565f7474a337f1ff5a5f63ac43f335b4169a74d6c47c3732f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
