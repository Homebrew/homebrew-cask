cask :v1 => 'jitsi' do
  version '2.4'
  sha256 'ceb6b2ab04206a51faf1dbffb704a7a60ae2b7c47834b50f87da5557f543ad13'

  url "https://download.jitsi.org/jitsi/macosx/jitsi-#{version}-latest.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          :sha256 => 'db2939816e8a38c7197160ab455626af9aadc2c5603f2212e372cffb85b31949'
  homepage 'https://jitsi.org/'
  license :unknown

  app 'Jitsi.app'
end
