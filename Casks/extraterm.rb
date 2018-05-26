cask 'extraterm' do
  version '0.35.1'
  sha256 '01723ea7592af345fe722a8e9fddb96a057c6480889bedfc6bfaa609a3865735'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom',
          checkpoint: 'ce2542f3b1532ddfb0f31de94c555b3feaa15f4741a6372d0817ff7a28280442'
  name 'extraterm'
  homepage 'http://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
