cask :v1 => 'preference-manager' do
  version :latest
  sha256 :no_check

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'http://www.digitalrebellion.com/rss/appcasts/pref_man_appcast.xml'
  homepage 'http://www.digitalrebellion.com/prefman'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preference Manager.app'
end
