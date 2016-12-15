cask 'lima' do
  version '1.2.3'
  sha256 '9b8ff2effd930921401d26c28303a2da61f44eb1b8638c3537b1644e42671d42'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
