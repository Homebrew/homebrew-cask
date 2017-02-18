cask 'riot' do
  version '0.9.7'
  sha256 '8586274e4e3a48b227884e170b9b626b4c662ddf6d808e189bf07f86fd86ae53'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '16f57186dedac3c4c36adbfbe3464af71770d017b5d8fbc864634a0b4cb86f1b'
  name 'Riot'
  homepage 'https://riot.im/'

  app 'Riot.app'
end
