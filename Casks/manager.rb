cask 'manager' do
  version '18.10.21'
  sha256 '2dde94cc7765e39ed5b84b65fc3ac707ff9199aef613d5f619843f6450bc6168'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
