cask 'balenaetcher' do
  version '1.5.86'
  sha256 '66972b8b085196a0c037279fbab446e2059fae7e40cd29a0e2430b02f8379798'

  # github.com/balena-io/etcher/ was verified as official when first introduced to the cask
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
