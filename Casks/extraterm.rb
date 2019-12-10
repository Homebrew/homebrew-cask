cask 'extraterm' do
  version '0.48.0'
  sha256 '14260b7c7aebd3c05f5eeca4ce3e2c65280eb466e159d724919cd7424eaf36e4'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom'
  name 'extraterm'
  homepage 'https://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
