cask 'manager' do
  version '19.1.14'
  sha256 '610d732233c2a37dcf0a91ee6a0e95ad54ebb9a04120279188e3c56a6e7435c8'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
