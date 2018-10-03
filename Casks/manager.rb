cask 'manager' do
  version '18.10.20'
  sha256 'e8d0d7b458d312a2dce6026f010ab58e3af6c43296832c3bc38c87d0225cf866'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
