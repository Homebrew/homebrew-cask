cask 'github-desktop' do
  version '222'
  sha256 'b7d001b36a88f75f9c6102de8fbf683ab940caa2b654fd7a1a0f367be689fc02'

  url "https://mac-installer.github.com/mac/GitHub%20Desktop%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          checkpoint: 'b6482e6fe6594a1a9aad10b645fc551c9e16d0cd8deb4cedbfca6adaae43f1c2'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  app 'GitHub Desktop.app'
  binary "#{appdir}/GitHub Desktop.app/Contents/MacOS/github_cli", target: 'github'

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
