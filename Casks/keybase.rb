cask 'keybase' do
  version '1.0.18-20170120152345'
  sha256 '896ebeab741c4f4abfc848aef771488d2b5bbb08388c2ff6237284e22e23bb82'

  url 'https://prerelease.keybase.io/Keybase.dmg'
  appcast 'https://github.com/keybase/client/releases.atom',
          checkpoint: 'e52341b2c47ad7ebf202812221116c9bb4eda1f938de97225584bf7ebeff0d6d'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'
end
