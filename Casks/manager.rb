cask 'manager' do
  version '19.1.26'
  sha256 'f2b2b82d260de22ec69ae987b17620203a89f2652f29c703c36e3a7811606c63'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
