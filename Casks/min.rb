cask 'min' do
  version '1.6.3'
  sha256 'c79e32dcaeb170a4276bb9981642359135716731d1457d9cc3fc25db51e941c8'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'd2616d784b1a20887718c7d5480b43a11ff8e94912889ee2040344f8cffa6b32'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
