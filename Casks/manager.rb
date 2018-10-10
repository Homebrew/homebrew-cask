cask 'manager' do
  version '18.10.34'
  sha256 'cdc5db48851b3a76ddaad217ac82c5993a4f36a846856a786b9bcefbe808d1eb'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
