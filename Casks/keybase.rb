cask 'keybase' do
  version '1.0.18-20170130165558,0fcd377'
  sha256 'b871ee5bf7af5f3194ae4c679e7cf98c260262638005b7851090a08093d5b103'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://github.com/keybase/client/releases.atom',
          checkpoint: 'e52341b2c47ad7ebf202812221116c9bb4eda1f938de97225584bf7ebeff0d6d'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'
end
