cask :v1 => 'grooveshark' do
  version :latest
  sha256 :no_check

  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Grooveshark.app'

  caveats <<-EOS.undent
    #{token} requires Adobe Flash, available via

      brew cask install flash
  EOS
end
