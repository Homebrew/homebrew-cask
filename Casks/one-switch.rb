cask 'one-switch' do
  version '1.11,234'
  sha256 '184a01f87ba4882414c3a8fc4a3966bfe13a6e8d0b25fed4a563f8c69bb04273'

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast 'https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
