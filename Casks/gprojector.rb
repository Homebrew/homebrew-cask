cask 'gprojector' do
  version '1.7.4'
  sha256 '6e8d8c5659b8d9719cbf1ac95a1fee814a8411362639493ecfa383a6b929fb71'

  url "http://www.giss.nasa.gov/tools/gprojector/G.ProjectorOSX-#{version}.dmg"
  name 'G.Projector'
  homepage 'http://www.giss.nasa.gov/tools/gprojector/'
  license :gratis

  app 'G.Projector.app'

  caveats <<-EOS.undent
    #{token} requires Java 7+, you can install the latest Java using

      brew cask install java
  EOS
end
