cask :v1 => 'github-desktop' do
  version '216'
  sha256 '5e3f5c92080aa55a3487b9709e789daf01c1db9d52d838d64aed6e9e45648255'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d4hwcs1zqtwzs.cloudfront.net/mac/GitHub%20Desktop%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          :sha256 => 'bad3f308d30fa64b22c44071823db7245e92123abfc6a702606b7edf43cc0369'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'
  license :gratis

  app 'GitHub Desktop.app'
  binary 'GitHub Desktop.app/Contents/MacOS/github_cli', :target => 'github'

  postflight do
    suppress_move_to_applications
  end

  uninstall :launchctl => [
                           'com.github.GitHub.Conduit',
                           'com.github.GitHub.GHInstallCLI'
                          ]

  zap :delete => [
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
