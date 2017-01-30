cask 'keybase' do
  version '1.0.18-20170130165558,0fcd377'
  sha256 'b871ee5bf7af5f3194ae4c679e7cf98c260262638005b7851090a08093d5b103'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '6a8df98fc9fc4abbd8931ba82f17bc6e60732646a88fcbe243b0ca6f9922fb8e'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'
end
