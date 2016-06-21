cask 'keybase' do
  version :latest
  sha256 :no_check

  url 'https://prerelease.keybase.io/Keybase.dmg'
  name 'Keybase'
  homepage 'https://keybase.io'
  license :bsd

  app 'Keybase.app'
end
