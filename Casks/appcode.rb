cask 'appcode' do
  version '2016.3.3'
  sha256 'd75c074bf9be6ac052d26027c852c2bc44456cc4e9846da3f07e3169f97e85f1'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '40c48a8a80206c2e0f13f1338ec6c0643c2a59f4c5ff04206f4f4eb636ec61ea'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true
  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
