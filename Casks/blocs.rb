cask 'blocs' do
  version '2.0.9'
  sha256 '8b2b88916e22b1ee80562e84293875728507f0d1220bffe4113e415e26b10276'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '465d449189c0110452b366bdd329d91a8aaf687926ea42b7a68d231edc13c9cb'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
