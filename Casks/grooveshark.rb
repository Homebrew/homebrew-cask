cask :v1 => 'grooveshark' do
  version :latest
  sha256 :no_check

  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  license :unknown

  app 'Grooveshark.app'
  caveats <<-EOS.undent
    #{title} requires Adobe Flash, available via

      brew cask install flash
  EOS
end
