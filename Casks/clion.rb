cask 'clion' do
  version '2016.1.2b'
  sha256 'c840632dc631a22f6296c744a32952075e34fe4a2b379b4a9f787650098c59f2'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  conflicts_with cask: 'clion-eap'

  app 'CLion.app'

  zap delete: [
                "~/.CLion#{version.major_minor}",
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
