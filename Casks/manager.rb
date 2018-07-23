cask 'manager' do
  version '18.7.44'
  sha256 '628e703ace43b3e1f4706a59b8d47787aac227093d91fbe18b8e3c57186f91e4'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
