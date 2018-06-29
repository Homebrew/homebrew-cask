cask 'manager' do
  version '18.5.91'
  sha256 '7839401061304b5685cea20e1c236525aaf97f02a1233cbe45566698346fa9e1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
