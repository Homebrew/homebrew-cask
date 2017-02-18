cask 'appcode' do
  version '2016.3.2'
  sha256 '40191ec259b012e1d3badcaa18dab1a2db72486c66ff4ead94dfde15f6f44610'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '4ec098d5ceae729ece7fe9e8584bcf2ac9338d8d1c25a5543aa54dbb19152bd1'
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
