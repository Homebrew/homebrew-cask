cask 'manager' do
  version '18.8.10'
  sha256 '7a0a5c41be7e321c9d7d449c50a09c6d66010b0cf6162dde52cb4b5cfc0f1188'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
