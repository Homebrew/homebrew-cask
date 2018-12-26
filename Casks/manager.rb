cask 'manager' do
  version '18.12.14'
  sha256 '0389c841a773250fc528e0d9e2cd06a06a570e0a33afef9f76783ace8ddb5a6c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
