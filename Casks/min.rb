cask 'min' do
  version '1.6.0'
  sha256 '33259c28da7eb86a50df2a7fc7e890060dabc6f69956da2480e06adbbc6df327'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: '30c8d1934776833221158a4b0e2ffb1f0e38e21806309f3315119c0597c53939'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
