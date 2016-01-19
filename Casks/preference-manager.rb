cask 'preference-manager' do
  version '4.3.2'
  sha256 '39ba1f2e92cef296c8dc811dce7d7a972de3bda7838e9fad8c9c67e1e188dd75'

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml',
          checkpoint: '58f8aa3bed4124c5996f2ef60124412ab42b3a138dc5e308870b559ae9a9768f'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preference Manager.app'
end
