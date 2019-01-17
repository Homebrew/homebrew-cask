cask 'manager' do
  version '19.1.16'
  sha256 '1246464a4c5a93221cfcf8948347fce93ac0a4d82feee3123b76d7a25b1690fb'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
