cask 'min' do
  version '1.5.1'
  sha256 '702adc38b323ce68032fca433126248af55d08f6d73098a3b1ce89f4285528d0'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'b4dd5cc128a8a80ea14a393f8457140ef4e5b2b4f2482df630a1e63b503f288f'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
