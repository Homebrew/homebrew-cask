cask 'data-integration' do
  version '7.1.0.0-12'
  sha256 'e53a7e7327a50b19bb1d16a06d589a8ba3719e5a678abf5cea713503453d37f2'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/Data%20Integration',
          checkpoint: '17befca044b649c71fcc9c4f7f9d14b27471c206874035c518075d96ed045d1e'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com/'

  app 'data-integration/Data Integration.app'
end
