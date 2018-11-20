cask 'manager' do
  version '18.11.39'
  sha256 'd1d43c692fa52046732bee4639a7cc2807de10c4480bbc73214f0d5b01f30d92'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
