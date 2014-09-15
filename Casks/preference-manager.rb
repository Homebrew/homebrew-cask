class PreferenceManager < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'http://www.digitalrebellion.com/rss/appcasts/pref_man_appcast.xml'
  homepage 'http://www.digitalrebellion.com/prefman'

  app 'Preference Manager.app'
end
