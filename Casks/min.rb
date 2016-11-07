cask 'min' do
  version '1.5.0'
  sha256 'b143004d34f2d1f22b3e1bffc38fa5a53fce491e5ffe6639bceeaeaf5f04ede2'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'd9fe31b89a107bec70ad419961cfba3e7dc971ac3946bf67894b9fb99b4a36cc'
  name 'Min'
  homepage 'https://minbrowser.github.io/min'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
