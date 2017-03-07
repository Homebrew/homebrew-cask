cask 'sip' do
  version '0.9.8'
  sha256 '89b18f742c912d48843292ce3f28b43f6811c27a02fcc282c339ef3213f41c06'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '5e90ce17e4cd618f792148e190f899cc711436f23b25d746941694ae82f1bbb4'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
