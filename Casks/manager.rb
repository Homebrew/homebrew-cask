cask 'manager' do
  version '19.1.29'
  sha256 'dd1dd10ad680edd92eae8efa0a656e271865418ef8960598496a9c5908568eff'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
