cask 'github-desktop' do
  version '219'
  sha256 '646c9b96e6b99c2d7c683feb3355d4aee4023d5c57af336531bcbc143f4920b0'

  url "https://mac-installer.github.com/mac/GitHub%20Desktop%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          checkpoint: '9267f5934fc34a3b02bf7950e1f313c2b88adff06215111260a123d040330284'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'
  license :gratis

  app 'GitHub Desktop.app'
  binary 'GitHub Desktop.app/Contents/MacOS/github_cli', target: 'github'

  postflight do
    suppress_move_to_applications
  end

  uninstall launchctl: [
                         'com.github.GitHub.Conduit',
                         'com.github.GitHub.GHInstallCLI',
                       ]

  zap delete: [
                '~/Library/Application Support/GitHub for Mac',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.GitHub',
                '~/Library/Application Support/com.github.GitHub.ShipIt',
                '~/Library/Caches/GitHub for Mac',
                '~/Library/Caches/com.github.GitHub',
                '~/Library/Containers/com.github.GitHub.Conduit',
                '~/Library/Preferences/com.github.GitHub.LSSharedFileList.plist',
                '~/Library/Preferences/com.github.GitHub.plist',
              ]
end
