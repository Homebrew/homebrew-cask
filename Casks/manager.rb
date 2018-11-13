cask 'manager' do
  version '18.11.25'
  sha256 '64c93f6ab2ce51427fd47ad2857e800196fde7a4f46252fd44b4fc52f225aee5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
