cask 'manager' do
  version '18.5.60'
  sha256 '5e9495b2255b6fcb25ec90c2fa50fc524cd98f37fccd1f153456d96133164b94'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
