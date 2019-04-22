cask 'balenaetcher' do
  version '1.5.29'
  sha256 '93fe2164595ad68b2e2e9910090707b99d44ef5b1bac9c5f4af0df7884d7f73a'

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
