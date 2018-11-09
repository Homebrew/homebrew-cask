cask 'manager' do
  version '18.11.11'
  sha256 'f40cd7dee98394256c7869a646f5a7e693cb4ce71b04e54bbb37b18b156996d3'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
