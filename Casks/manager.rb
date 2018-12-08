cask 'manager' do
  version '18.11.65'
  sha256 'ac467a84e64b314b123fdfba9d955788fe7653a70d45d93d4d499de4dfc79f9b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
