cask 'manager' do
  version '18.10.83'
  sha256 '292868ad47cfb3abb84772b8ea7d859d7afe1a754a3b64cdb1ddaa5064b8966a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
