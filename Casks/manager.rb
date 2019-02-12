cask 'manager' do
  version '19.1.40'
  sha256 '3b6f4f402764379098e0033e3a3f1c69d1c3512cf8ac76ee27fdbfcfb123c7d8'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
