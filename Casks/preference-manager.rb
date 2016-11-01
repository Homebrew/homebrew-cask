cask 'preference-manager' do
  version '4.4'
  sha256 '39ba1f2e92cef296c8dc811dce7d7a972de3bda7838e9fad8c9c67e1e188dd75'

  url 'http://download.digitalrebellion.com/Pref_Man.dmg'
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml',
          checkpoint: '16d1e93f7fbdb16438f4fe44ae29079e63dbff5886965b707a72232371684d14'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman'

  app 'Preference Manager.app'
end
