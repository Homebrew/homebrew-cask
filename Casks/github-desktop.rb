cask 'github-desktop' do
  version '221'
  sha256 'cbb12a07ab9e219a5e335479f35fda9af6cb76c13d19ccb6149f186ea2295d4a'

  url "https://mac-installer.github.com/mac/GitHub%20Desktop%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          checkpoint: '9c34ddf221f3943b28ced05edd3997cceb50631abc2a68111ff14cfad21b9017'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'
  license :gratis

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
