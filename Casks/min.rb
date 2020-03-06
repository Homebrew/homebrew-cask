cask 'min' do
  version '1.13.0'
  sha256 '3e96cda38ff45345d815290a28623895f47627b99a9117a60dec9b999cfa0ed0'

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
