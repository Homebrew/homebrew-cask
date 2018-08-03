cask 'manager' do
  version '18.7.79'
  sha256 '732259253d6af71a1ba820c91182278d6dba9d39e5ceb9a23af13608f09e3f80'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
