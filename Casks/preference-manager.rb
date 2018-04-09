cask 'preference-manager' do
  version '4.4.2.0'
  sha256 'b39ece3b79d5d72987abf0aa79b8d5fcb996dfd29dff6016f37c3529fd3ecefd'

  url "http://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml',
          checkpoint: '814019aa9148e017b36e6399ed01226a2db4755e0f8594a67fed32c861c8ae9c'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman/'

  app 'Preference Manager.app'
end
