cask 'jitsi' do
  version '2.8.5426'
  sha256 '91980b803ba5c165c5ec109b784a7338bf5d1af2f866c513baf114bbda2953a4'

  url "https://download.jitsi.org/jitsi/macosx/jitsi-#{version}.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          checkpoint: '0bc9e51570c27e6f5f2cd22ef44b673a6cd0968dc26ee961a07000215af929ab'
  name 'Jitsi'
  homepage 'https://jitsi.org/'
  license :gpl

  app 'Jitsi.app'
end
