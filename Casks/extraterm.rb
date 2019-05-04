cask 'extraterm' do
  version '0.42.0'
  sha256 'ef4d126759465ee053d7e8830f8f8eda6b0f0f42a6a5ad417fd6db039285f909'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom'
  name 'extraterm'
  homepage 'http://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
