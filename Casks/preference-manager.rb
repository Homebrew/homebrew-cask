cask 'preference-manager' do
  version :latest
  sha256 :no_check

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man_appcast.xml',
          :sha256 => '5b9f5dd63a282c298d473e8fac4c5ca4c23de56b15defc2ef05350bcfb3d0c27'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preference Manager.app'
end
