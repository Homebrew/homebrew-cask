cask 'min' do
  version '1.2.2'
  sha256 '07be7b054795fa180089dd13178e84e4e2591c56d5dcc2b371df10351c56175f'

  # github.com/PalmerAL/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: '6e229c2d781525c30ce5ba66c4269a83568675e38634171667fed5f48dad31dd'
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
