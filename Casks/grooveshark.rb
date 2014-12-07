cask :v1 => 'grooveshark' do
  version :latest
  sha256 :no_check

  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  license :unknown

  app 'Grooveshark.app'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} requires Adobe Flash, available via

      brew cask install flash
  EOS
end
