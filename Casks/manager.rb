cask 'manager' do
  version '18.5.42'
  sha256 '9cba3f5cf39c4f0a5ff9ecc4b42f6c46fdc414520f2220663cc13f9c13a15f2e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
