cask 'minerva' do
  version '3.5.0'
  sha256 'c2a53ab7bd14924e2a7e3f987eae2586f408c6b24b8b59cad435f9bd7668a130'

  url "http://blog.coursevector.com/downloads/Minerva-#{version.gsub('.', '-')}.air"
  name '.minerva'
  homepage 'http://blog.coursevector.com/minerva/'
  license :gratis

  depends_on cask: 'adobe-air'

  app 'minerva.app'

  caveats do
    discontinued
  end
end
