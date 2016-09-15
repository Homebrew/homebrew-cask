cask 'blocs' do
  version '2.2.0'
  sha256 '270fecea5f788f4283bfe97ed49e46769f1e9fda0a2633e7e3056e26dd2ed76c'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: 'b3b89d8bd35f284647dee8491905b35159948096f8092c510212a80b94b3cc2f'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
