cask 'manager' do
  version '18.11.35'
  sha256 'be9db9dc26b55322c8eaec1aa797424bea6ac98da98d19a5b14cdddecaa4fc11'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
