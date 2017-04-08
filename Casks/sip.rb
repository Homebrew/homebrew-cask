cask 'sip' do
  version '1.0.1'
  sha256 '0164d5136e57e016bd8f01a9b04418e5bbfabf32cddf3d4d435ea14fcbea713d'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'ed62453dea14d74753b6a56f2fcc933b459a9af036dee02adcfaa187ebe7e4bb'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
