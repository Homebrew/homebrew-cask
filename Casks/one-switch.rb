cask 'one-switch' do
  version '1.10,228'
  sha256 '1fda510ebdf5a398957ac131d4f4dcd60e39c3cedc3dd3b11ff1c113d9a5e8fd'

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast 'https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
