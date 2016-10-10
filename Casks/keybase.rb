cask 'keybase' do
  version :latest
  sha256 :no_check

  url 'https://prerelease.keybase.io/Keybase.dmg'
  name 'Keybase'
  homepage 'https://keybase.io'

  auto_updates true

  app 'Keybase.app'
end
