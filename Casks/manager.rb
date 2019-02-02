cask 'manager' do
  version '19.1.36'
  sha256 'b2e5997ce248dd2c3f9bc96ba4c0d015c5fd87e4af55ad381011a5e58cf52046'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
