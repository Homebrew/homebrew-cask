cask 'manager' do
  version '18.7.61'
  sha256 'ebe17851ef1a8f88606a2812d7c95f46a45569d32689e5c0018b69f98b0aeeb1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
