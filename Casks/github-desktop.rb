cask 'github-desktop' do
  version '216'
  sha256 '5e3f5c92080aa55a3487b9709e789daf01c1db9d52d838d64aed6e9e45648255'

  url "https://mac-installer.github.com/mac/GitHub%20Desktop%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          checkpoint: '1d7ee5fd5711c575703ea3c42d7182e3403e7e11e80fc50e6bc4cafa5672bad1'
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
