cask 'min' do
  version '1.7.1'
  sha256 '0690f422d20b031ac6b94cdf93fd049cd399e95ca866a5fe20b18f96752bcf97'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
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
