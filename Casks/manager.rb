cask 'manager' do
  version '18.7.10'
  sha256 '52f404dc2ebd9b72acb15e96993824f10930868837de08b8e28d1cc8a44686cc'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
