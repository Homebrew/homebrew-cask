cask 'manager' do
  version '18.8.81'
  sha256 'f00db6ff59f94c35133e3049f6dc1641cb3b69df8e2921265d3d2076e4401a30'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
