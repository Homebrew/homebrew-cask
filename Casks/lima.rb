cask 'lima' do
  version '1.4.8'
  sha256 '213da0b6405ad720884822965466b992a3ef5e762005ee8fdf7640708ea9601a'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  appcast 'https://update.api.meetlima.com/osx?channel=MASTER'
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
