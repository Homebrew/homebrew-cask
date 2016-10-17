cask 'kap' do
  version '0.3.0'
  sha256 '26ddc84a87ed1fd1045785f929117c352b8525ab0ac36b486eb63ab0c7018a4b'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '708f9430dc40123e9ad729914a9de5295e37c98f9f1de5853636183a5c98508f'
  name 'Kap'
  homepage 'https://getkap.co/'

  app 'Kap.app'

  zap delete: [
                '~/Library/Preferences/com.wulkano.kap.plist',
                '~/Library/Preferences/com.wulkano.kap.helper.plist',
                '~/Library/Application Support/Kap',
                '~/Library/Saved Application State/com.wulkano.kap.savedState',
                '~/Library/Caches/com.wulkano.kap',
                '~/Library/Caches/com.wulkano.kap.ShipIt',
              ]
end
