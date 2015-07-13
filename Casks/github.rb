cask :v1 => 'github' do
  version '208'
  sha256 '8c1f458d273d335a4983e5918374c9e0927e19ed5c86ca9607cd1aadc2d553da'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d4hwcs1zqtwzs.cloudfront.net/mac/GitHub%20for%20Mac%20#{version}.zip"
  appcast 'https://central.github.com/mac/appcast.xml',
          :sha256 => 'f67f6cc4f51758d15ff4e55173ce2976f312e5bb551b74d00198fd0d41dd9109'
  name 'GitHub'
  homepage 'https://mac.github.com/'
  license :oss

  app 'GitHub.app'
  binary 'GitHub.app/Contents/MacOS/github_cli', :target => 'github'

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
                 ]
end
