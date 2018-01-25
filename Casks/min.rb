cask 'min' do
  version '1.7.0'
  sha256 'b13a591406d71fdc4bb4421b68ff6a5b6fc7c8f3f3fddad28346033704626f5b'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: '48ac93a8a9ce37d03c35a197c4f76db96b71baa0f0c6bd3d5590995b6b86debb'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap trash: [
               '~/Library/Application Support/Min',
               '~/Library/Caches/Min',
               '~/Library/Saved Application State/com.electron.min.savedState',
             ]
end
