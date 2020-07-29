cask 'min' do
  version '1.15.0'
  sha256 '4a81b39ec31e904449f4e9ffc1383e8b9ae3ce72c5fa61c5e4fd291163b0600e'

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
