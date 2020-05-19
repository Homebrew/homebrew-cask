cask 'one-switch' do
  version '1.12,240'
  sha256 '4d73686b7a0600ce85c74676dd99c448fea4b76a43da5c6961a4ea216b41a322'

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast 'https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
