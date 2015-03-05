cask :v1 => 'metadatics' do
  version :latest
  sha256 :no_check

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
