cask 'one-switch' do
  version '1.9.1,216'
  sha256 '7165f18c7e201ace33c8aa43eed7a78051c2cb050fe782da862243f96813c96c'

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast 'https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
