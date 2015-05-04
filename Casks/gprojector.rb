cask :v1 => 'gprojector' do
  version :latest
  sha256 :no_check

  url 'http://www.giss.nasa.gov/tools/gprojector/GProjectorOSX.dmg'
  name 'G.Projector'
  homepage 'http://www.giss.nasa.gov/tools/gprojector/'
  license :gratis

  app 'G.ProjectorOSX/G.Projector.app'

  caveats <<-EOS.undent
    #{token} requires Java 7+, you can install the latest Java using

      brew cask install java
  EOS
end
