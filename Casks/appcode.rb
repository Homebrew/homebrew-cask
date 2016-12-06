cask 'appcode' do
  version '2016.3'
  sha256 '6aaf95a86aaa77160fac5602659d7552aae4bbe525f55a40ae5e79d3b80dca6d'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
