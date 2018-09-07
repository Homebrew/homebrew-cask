cask 'manager' do
  version '18.9.20'
  sha256 'c26f708e6139b4788845435e3417c13cb84df708174b11610bd5d435117f08f9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
