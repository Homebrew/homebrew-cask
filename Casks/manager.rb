cask 'manager' do
  version '18.11.63'
  sha256 'b889b42e01f13662c890e0c63ea254acdd0ca195df74695d71e53b6ec886fb6a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
