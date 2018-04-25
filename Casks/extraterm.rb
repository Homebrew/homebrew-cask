cask 'extraterm' do
  version '0.33.1'
  sha256 '18b28f7ad83a3c256e0fa30784aacd620f81cd86e5c1311d476d2e5f8665a04d'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom',
          checkpoint: 'bc8ca0b688a4e846692af6efc278a11feaadce805b2b8e2a1d6fa6d3e3c5ea9b'
  name 'extraterm'
  homepage 'http://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
