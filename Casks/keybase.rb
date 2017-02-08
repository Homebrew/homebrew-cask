cask 'keybase' do
  version '1.0.18-20170207120017,ce0f90d'
  sha256 '791f510ed8440e9fa59e5dae2b632ce8427ad50a682e5c3792e4b127a410a638'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'a8454aca49d7dbb496f5fb4e5dc646c3ddeb2fb3f253d561600ea0682f3052f1'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'
end
