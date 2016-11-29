cask 'app-tamer' do
  version '2.2'
  sha256 'b367c8967b12d2f91761b8464a0b6819265e2cb8e24cd6e138c0dd2732777e61'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: '38cb483b444cc13cb1743f427b9bb6a2abb91fb8a5e00365402d4c5ccdb32553'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'
end
