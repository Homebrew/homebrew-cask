cask 'manager' do
  version '19.1.23'
  sha256 'abe386a558afbe98acb6d008c650ef5ae74a44b0aa2902af3be0414a5d2bde03'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
