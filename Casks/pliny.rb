cask 'pliny' do
  version '1.1.0'
  sha256 '1c263c181988e3cbbc110aa2802470272d7d3969cd6aa309af98b63a2680b215'

  url "http://pliny.cch.kcl.ac.uk/pliny-app-#{version}.tar.gz"
  name 'Pliny'
  homepage 'http://pliny.cch.kcl.ac.uk'
  license :eclipse

  app 'Pliny/pliny.app'
end
