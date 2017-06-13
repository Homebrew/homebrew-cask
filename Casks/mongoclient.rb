cask 'mongoclient' do
  version '2.1.0'
  sha256 '4ae7a761f82d315c43f238f98ff5dabc0a78b8445fe392a1bf521b7a30c977d3'

  # github.com/mongoclient/mongoclient was verified as official when first introduced to the cask
  url "https://github.com/mongoclient/mongoclient/releases/download/#{version}/osx-portable.zip"
  appcast 'https://github.com/mongoclient/mongoclient/releases.atom',
          checkpoint: '5979ef2c12d00e088649c32b45e6ceae2b721bf81d19b1b8186a39942236623f'
  name 'Mongoclient'
  homepage 'https://www.mongoclient.com/'

  app 'Mongoclient-darwin-x64/Mongoclient.app'

  zap delete: [
                '~/Library/Application Support/Mongoclient',
                '~/Library/Preferences/com.electron.mongoclient.helper.plist',
                '~/Library/Preferences/com.electron.mongoclient.plist',
                '~/Library/Preferences/Mongoclient',
              ]
end
