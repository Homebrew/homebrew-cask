cask 'min' do
  version '1.4.1'
  sha256 '2fa840f36c946b9a36c1ada237025f4345ad48d8309c79c0b9c4e63ea3f024a7'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: '726031eecd9ac76c8a54b9270fefa4b4b5baf81e58bab8ae1d8dcf499f446f30'
  name 'Min'
  homepage 'https://minbrowser.github.io/min'
  license :oss

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
