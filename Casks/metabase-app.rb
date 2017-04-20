cask 'metabase-app' do
  version '0.23.1.0'
  sha256 'c3ada069967d8ff292cbd1db216f206a870734c1a5b7339dbb8b948ebafd492f'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'ce10645a291934688d446d2dd4c6c1eeff6c5e5e4546f570b5cb8dd17a12e347'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
