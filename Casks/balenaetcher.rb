cask 'balenaetcher' do
  version '1.5.34'
  sha256 '0fcd8995c53876a1fa7b4f9dc15b77eb2ad674f8dcc2332cc37aadf677359dca'

  # github.com/balena-io/etcher was verified as official when first introduced to the cask
  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg"
  appcast 'https://github.com/balena-io/etcher/releases.atom'
  name 'Etcher'
  homepage 'https://balena.io/etcher'

  app 'balenaEtcher.app'

  uninstall quit: [
                    'com.github.Squirrel',
                    'com.github.electron.framework',
                    'io.balena.etcher.*',
                    'org.mantle.Mantle',
                    'org.reactivecocoa.ReactiveCocoa',
                  ]

  zap trash: [
               '~/Library/Application Support/balena-etcher',
               '~/Library/Preferences/io.balena.etcher.helper.plist',
               '~/Library/Preferences/io.balena.etcher.plist',
               '~/Library/Saved Application State/io.balena.etcher.savedState',
             ]
end
