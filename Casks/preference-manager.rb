cask 'preference-manager' do
  version '4.4.3.0'
  sha256 '4920d80e09bf5e492a930896068352c4f08b3764ce723b7c13000e8b1d04ae15'

  url "https://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman/'

  app 'Preference Manager.app'
end
