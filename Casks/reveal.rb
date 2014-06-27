class Reveal < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://download.revealapp.com/Reveal.app.zip'
  appcast 'http://download.revealapp.com/reveal-release.xml'
  homepage 'http://revealapp.com/'

  link 'Reveal.app'
end
