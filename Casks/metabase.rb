cask 'metabase' do
  version '0.14.0'
  sha256 '081caf591a5038ce233d40118de127ec0a38b28b38a25e3e38b341641fb78929'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '72054dfbcbd85089bf0199b85e0398512676ae4ec990398c46c4ad2e131d4fa7'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
