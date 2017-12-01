cask 'metabase-app' do
  version '0.27.1.0'
  sha256 '51fb458eec63fb47d83bd6f3eec6aacfdb696090ec8249e40628d54a68958e7e'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '15b5cb5efbc3cb9eb946b70e2d8b89c48524c6b32403a50c8e34fc96012a52c3'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
