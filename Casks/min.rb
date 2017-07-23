cask 'min' do
  version '1.6.0'
  sha256 '33259c28da7eb86a50df2a7fc7e890060dabc6f69956da2480e06adbbc6df327'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'ab42fa79c0f95aa75422a48cd99d5d8ab8a3d12be8a20b617b1ddd13786e1183'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
