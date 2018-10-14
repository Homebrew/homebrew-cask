cask 'preference-manager' do
  version '4.4.2.0'
  sha256 'b39ece3b79d5d72987abf0aa79b8d5fcb996dfd29dff6016f37c3529fd3ecefd'

  url "https://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman/'

  app 'Preference Manager.app'
end
