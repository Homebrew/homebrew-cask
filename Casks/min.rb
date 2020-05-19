cask 'min' do
  version '1.14.1'
  sha256 '6f6e19d5fff750f8ca47a78bd75fc13c07a7e60f80698bb2f0d5975ecc29d452'

  # github.com/minbrowser/min/ was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap trash: [
               '~/Library/Application Support/Min',
               '~/Library/Caches/Min',
               '~/Library/Saved Application State/com.electron.min.savedState',
             ]
end
