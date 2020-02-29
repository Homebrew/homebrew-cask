cask 'extraterm' do
  version '0.49.0'
  sha256 '66ec873fcf3530935bbbff76dbd655d85fc765e448e41fe20d6a4f708ca4d5bc'

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
