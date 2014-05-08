class Grooveshark < Cask
  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  version 'latest'
  sha256 :no_check
  link 'Grooveshark.app'
  caveats <<-EOS.undent
    Grooveshark requires Adobe Flash.  Flash can be installed via:
      brew cask install flash
    EOS
end
