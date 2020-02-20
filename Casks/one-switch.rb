cask 'one-switch' do
  version '1.9.2,221'
  sha256 '923b6d2022c2f2e604f652d651e6e9f111bae3bc3552a66d7a6646e7bb67725a'

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast 'https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
