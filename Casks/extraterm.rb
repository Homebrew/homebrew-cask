cask 'extraterm' do
  version '0.34.0'
  sha256 '9023c9fcafc32d07dc3a279e6c78ece48a76aa558fd74f4437448ef723f1df7f'

  # github.com/sedwards2009/extraterm was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast 'https://github.com/sedwards2009/extraterm/releases.atom',
          checkpoint: '3937ef875fc9a6fc9481b93019788eda2cf1693ecf778c399e6bcd9e2ee4dade'
  name 'extraterm'
  homepage 'http://extraterm.org/'

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
               '~/Library/Application Support/extraterm',
               '~/Library/Preferences/com.electron.extraterm.helper.plist',
               '~/Library/Preferences/com.electron.extraterm.plist',
             ]
end
