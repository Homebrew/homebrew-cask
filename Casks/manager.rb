cask 'manager' do
  version '18.12.11'
  sha256 'a3dc0567f5493f1cbdffa8308487c3ddb7557bfe5175c8e2e7d06f6f133f1add'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
