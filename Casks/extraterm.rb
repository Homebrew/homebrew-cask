cask 'extraterm' do
  version '0.33.0'
  sha256 '1e814812816476be8449e86b8a6cba391a31cc24e6a42e0b1f4c1cf62a7a7b01'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom',
          checkpoint: '648588f33da86010390f154778bc89dc83254363c0fecef904b909530052dd3a'
  name 'extraterm'
  homepage 'http://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
