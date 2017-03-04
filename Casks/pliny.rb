cask 'pliny' do
  version '1.1.0'
  sha256 '1c263c181988e3cbbc110aa2802470272d7d3969cd6aa309af98b63a2680b215'

  url "http://pliny.cch.kcl.ac.uk/pliny-app-#{version}.tar.gz"
  appcast 'http://pliny.cch.kcl.ac.uk/setup.html',
          checkpoint: 'e91b521c5c361dca55ad9f0c1110cc53aa0ebe539726a06e6c2595e3cab0e88e'
  name 'Pliny'
  homepage 'http://pliny.cch.kcl.ac.uk/'

  app 'Pliny/pliny.app'
end
