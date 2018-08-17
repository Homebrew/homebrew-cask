cask 'manager' do
  version '18.8.4'
  sha256 '10b8e41b9fb1bbba242b789472a1bff0f4cf27d469ba6318b8caadf47dfcab0c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
