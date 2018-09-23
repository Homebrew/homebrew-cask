cask 'manager' do
  version '18.9.75'
  sha256 '7a171510203087eb720bddbf317c15df7d8b57e25a539b93810f8fb484a5e595'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
