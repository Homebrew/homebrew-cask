cask 'postbird' do
  version '0.8.2'
  sha256 'ef8d979c256e9d5308c6beee0805adb63ef1d7862da05b2f96c7489c6bec8848'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
