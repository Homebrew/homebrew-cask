cask 'preference-manager' do
  version :latest
  sha256 :no_check

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man_appcast.xml',
          :sha256 => '9892c646befabc81e7b5020de103abeb1e72d3090ebd421407112407e0626a37'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preference Manager.app'
end
