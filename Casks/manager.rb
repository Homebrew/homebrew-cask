cask 'manager' do
  version '18.7.22'
  sha256 '615a41025bd3ec1002913f659c18b9e47a6c2eef92d06dab8b8f61ef416dd131'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
