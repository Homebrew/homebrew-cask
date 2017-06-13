cask 'metabase-app' do
  version '0.24.2.0'
  sha256 '7bae276d6ae9060a4675f54cdaf9feb3c1f915a72412b33b976860918d3ce3a6'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'f78f47fdab94af73e9fcb8c27d0e32de26e4e718e4f550b8df1b70f73233b9ad'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
