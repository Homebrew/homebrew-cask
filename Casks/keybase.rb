cask 'keybase' do
  version '1.0.18-20170208165022,dc66461'
  sha256 '0bdd24d69e23fabbc2f35667c4f6db08d6ca73cd7633228230c0507192f10150'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '4d9420729e524541e08bd308461bec037b4b1524429048d3a18a630fab1b4d43'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'
end
