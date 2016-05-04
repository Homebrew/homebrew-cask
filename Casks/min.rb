cask 'min' do
  version '1.2.0'
  sha256 'aa6e234f11918911c0a07a2bd17c0314fa7c187630ac9878aab1df5283b18f1b'

  # github.com/PalmerAL/min was verified as official when first introduced to the cask
  url "https://github.com/PalmerAL/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/PalmerAL/min/releases.atom',
          checkpoint: '07e8b6671a4f0006dd4bcdab21e3fb2bea2df5a9909ba76132e2c54ae5c07f7e'
  name 'Min'
  homepage 'https://palmeral.github.io/min'
  license :oss

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
