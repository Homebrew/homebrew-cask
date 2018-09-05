cask 'jitsi' do
  version '2.10.5550'
  sha256 'd902af9dde7b1fde6f76af5f97e4f27d6b853bd9d3e83b2fec5292dda787a0da'

  url "https://download.jitsi.org/jitsi/macosx/jitsi-#{version}.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml'
  name 'Jitsi'
  homepage 'https://jitsi.org/'

  app 'Jitsi.app'
end
