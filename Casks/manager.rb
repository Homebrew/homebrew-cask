cask 'manager' do
  version '18.5.38'
  sha256 '7c6e43c1557c261ca0d026e092c40e2e318e0c78482666b298975c37bc47a652'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
