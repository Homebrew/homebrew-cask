class Grooveshark < Cask
  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  version 'latest'
  no_checksum
  link 'Grooveshark.app'

  def caveats
    <<-EOS.undent
      Grooveshark requires Adobe Flash to run:
        brew cask install flash
    EOS
  end
end
