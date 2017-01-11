cask 'appcode' do
  version '2016.3.1'
  sha256 'df8c43ad637918d68a1fefb8c8c51cce2493f9c68ba658d3654c8e6cb70d7cba'

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
