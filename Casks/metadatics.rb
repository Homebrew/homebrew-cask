cask 'metadatics' do
  version '1.5.5.1'
  sha256 'a9f9cfc137c6e0db6d1886fed67b6ba936e803158fa20682b1907ab77eb44514'

  url 'http://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'http://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: '30a574ab51ded0b5aa8d3fb4a211a8980bafb19b601a8e2b17be9cf6e0e9258a'
  name 'Metadatics'
  homepage 'http://markvapps.com/metadatics'
  license :commercial

  app 'Metadatics.app'
end
