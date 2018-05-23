cask 'manager' do
  version '18.5.21'
  sha256 '0be82612b7f63653e73d9a64077a112c93bf8cecf5f9989434b828a9c976f3b5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
