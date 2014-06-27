class Jitsi < Cask
  version '2.4'
  sha256 'ceb6b2ab04206a51faf1dbffb704a7a60ae2b7c47834b50f87da5557f543ad13'
  
  url 'https://download.jitsi.org/jitsi/macosx/jitsi-2.4-latest.dmg'
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml'
  homepage 'https://jitsi.org/'

  link 'Jitsi.app'
end
