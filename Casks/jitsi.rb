cask 'jitsi' do
  version '2.10.5550'
  sha256 'd902af9dde7b1fde6f76af5f97e4f27d6b853bd9d3e83b2fec5292dda787a0da'

  url "https://download.jitsi.org/jitsi/macosx/jitsi-#{version}.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          checkpoint: '240a8fc60ffcfb0ee41df2fada16c27a286ae3f91a49936509e2c2baaadde4bf'
  name 'Jitsi'
  homepage 'https://jitsi.org/'

  app 'Jitsi.app'
end
