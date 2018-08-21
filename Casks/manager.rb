cask 'manager' do
  version '18.8.14'
  sha256 '9df42258681b2a84dd174b47275dfe194fdd140c3b0ae8edc6f19e38cc4483d4'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
