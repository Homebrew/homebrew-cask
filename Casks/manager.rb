cask 'manager' do
  version '18.7.36'
  sha256 '93d3a582861c1a4bc822469cc78fd3768f5905e37dec7fe63e8dc452101b0e28'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
