cask 'data-integration' do
  version '6.1.0.1-196'
  sha256 'ef5076c09e8481d1ab4cfc5f7d4701437f80f2b97a3bf19dfa74821de9524495'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss',
          checkpoint: '70d19f1c19f8c6f11733c18ea3f8217f4514bd4e6aa50763bc05d1ab8ff97f72'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com'

  app 'data-integration/Data Integration.app'
end
