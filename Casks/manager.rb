cask 'manager' do
  version '18.8.7'
  sha256 '2b9711091411ff0e73ae69c2f76837c9e956f52d4c913dca12291419a13721d2'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
