cask 'manager' do
  version '18.7.6'
  sha256 '185cc169afc242927a91762ebb648d01313aa005c026e80fcdc871a1c4318787'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
