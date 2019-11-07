cask 'balenaetcher' do
  version '1.5.62'
  sha256 '1211caa552371974f4b6d587004a603b6f9ec29c608f904fd6893781c03da521'

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
