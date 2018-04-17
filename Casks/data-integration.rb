cask 'data-integration' do
  version '8.0.0.0-28'
  sha256 '52333d725523c9f3cb86b66eee768872660462484feabc78e9d402a4506fb5a6'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/Data%20Integration',
          checkpoint: '41154713ae8665c1087df19b6beb4038a17c2e4fbfcf0215e9094cc9d98efa05'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com/'

  app 'data-integration/Data Integration.app'
end
