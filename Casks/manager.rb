cask 'manager' do
  version '18.7.8'
  sha256 'd1c8e039365c6e1b99cc6501669b77e21a5bacfe2db912f23b9906ab6df09c9f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
