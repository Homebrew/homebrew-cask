cask 'pliny' do
  version '1.1.0'
  sha256 '1c263c181988e3cbbc110aa2802470272d7d3969cd6aa309af98b63a2680b215'

  url "http://pliny.cch.kcl.ac.uk/pliny-app-#{version}.tar.gz"
  appcast 'http://pliny.cch.kcl.ac.uk/setup.html',
          checkpoint: 'f7960672a3a9d42cfd907f69166c4a13239cc29ae07aa60675083f8c41cd3acb'
  name 'Pliny'
  homepage 'http://pliny.cch.kcl.ac.uk/'

  app 'Pliny/pliny.app'
end
