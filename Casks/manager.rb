cask 'manager' do
  version '18.12.22'
  sha256 '7102593a7e73a33391853a1ec8dbf56fd962ff11659e15680d91a496d8edf1ee'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
