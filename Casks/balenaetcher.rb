cask 'balenaetcher' do
  version '1.5.35'
  sha256 '2c7bcac68cb9b03a44ed5dfb46bf8122e64b3add805c8dfe94782e891d404d99'

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
