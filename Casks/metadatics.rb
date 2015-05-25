cask :v1 => 'metadatics' do
  version :latest
  sha256 :no_check

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  name 'Metadatics'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          :sha256 => 'be165a851e1f29743a79ad4252ccda747ed2a5a5ceb11a096e83134594919eb0'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
