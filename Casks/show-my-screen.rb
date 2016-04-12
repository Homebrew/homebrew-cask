cask 'show-my-screen' do
  version '0.4.4-20160403'
  sha256 '3433006686b9b428467f183c5cf45d7aab5f291698ab69f4b23a60f94219d192'

  url "https://www.show-my-screen.com/downloads/sms-v#{version}.dmg"
  name 'Show My Screen'
  name '华信云会议'
  homepage 'https://www.show-my-screen.com/'
  license :commercial

  app 'Show My Screen.app'
end
