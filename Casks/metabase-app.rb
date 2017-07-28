cask 'metabase-app' do
  version '0.25.1.5'
  sha256 '750c08de9ae2dbf13a914cf8b582619b35f0e653754600571926d4f1d107500c'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '7be00243c1167f95f21d68db259936c8812aad521699b75bf2da525c3652c916'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
