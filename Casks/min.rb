cask 'min' do
  version '1.5.1'
  sha256 '702adc38b323ce68032fca433126248af55d08f6d73098a3b1ce89f4285528d0'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'cb4a0fa6ec7b562c31aa9d218ca819db68a8904184cdddd9205ecad33349e8b3'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
