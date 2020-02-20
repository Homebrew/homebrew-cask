cask 'pynsource' do
  version '1.75'
  sha256 '8382e742d5cfefd429cfbcd00c5e5446a940038cfe8511e5f2a3f6bcbbcccd91'

  # github.com/abulka/pynsource was verified as official when first introduced to the cask
  url "https://github.com/abulka/pynsource/releases/download/version-#{version}/pynsource-#{version}-macosx.zip"
  appcast 'https://github.com/abulka/pynsource/releases.atom'
  name 'Pynsource'
  homepage 'https://www.pynsource.com/'

  app 'pynsource.app'

  zap trash: [
               '~/Library/Application Support/PyNsource',
               '~/Library/Logs/pynsource',
               '~/Library/Preferences/PyNSource',
               '~/Library/Saved Application State/Pynsource.savedState',
             ]
end
