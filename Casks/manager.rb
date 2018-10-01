cask 'manager' do
  version '18.10.15'
  sha256 '7e3dd8eedb1856fb20ca3c82e13ac7fb6057dd917ae95cfc2cf835f40ddcf88c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
