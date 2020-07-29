cask 'pynsource' do
  version '1.76'
  sha256 'd7ffd213b5fd033ab1561d9684b1322b99e9b0e3baa2d48e3a04c6d94fe75935'

  # github.com/abulka/pynsource/ was verified as official when first introduced to the cask
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
