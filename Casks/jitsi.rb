cask :v1 => 'jitsi' do
  version '2.6.5390'
  sha256 '574bae43116792ce1f2ab5e61486388eee07cdfab618f8a251f66ed7ed01d27d'

  url "https://download.jitsi.org/jitsi/macosx/jitsi-#{version}.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          :sha256 => 'db2939816e8a38c7197160ab455626af9aadc2c5603f2212e372cffb85b31949'
  homepage 'https://jitsi.org/'
  license :gpl

  app 'Jitsi.app'
end
