cask 'argouml' do
  version '0.34'
  sha256 '42a2e7659c4c4b4fcae4e093f65d83b13ff363c9594920c7c044601fcbb0cf24'

  url "http://argouml-downloads.tigris.org/nonav/argouml-#{version}/ArgoUML-#{version}.app.tar.gz"
  name 'ArgoUML'
  homepage 'http://argouml.tigris.org/'

  app 'ArgoUML.app'

  caveats do
    depends_on_java('6')
  end
end
