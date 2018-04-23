cask 'ao' do
  version '5.5.0'
  sha256 '38e214c9b724cb4c3ca169d05d0bdb9f361d368a11ba6fbe1836d27e3a5c66f6'

  url "https://github.com/klauscfhq/ao/releases/download/v#{version}/ao-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/ao/releases.atom',
          checkpoint: '00c1a110fdd709464d6a38dd869e3db91adb28c5a41dde4d339c9821271ba906'
  name 'Ao'
  homepage 'https://github.com/klauscfhq/ao'

  app 'Ao.app'
end
