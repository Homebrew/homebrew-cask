cask 'manager' do
  version '18.5.39'
  sha256 '15661ee3a56a81b851aa63e20baea2ff3c304864fb6a8e8321dde379099cd731'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
