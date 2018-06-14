cask 'manager' do
  version '18.5.47'
  sha256 'd9201e4ca2ac9adfce1507290f7246a32aa672f1abd0b81c85e569871d494a01'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
