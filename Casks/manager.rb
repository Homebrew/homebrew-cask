cask 'manager' do
  version '18.5.63'
  sha256 'f5f2350f2f12232c2e6b515ac41ed19318e63dbdcf8e6555a0046267e3134450'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
