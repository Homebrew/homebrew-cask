cask 'clion' do
  version '1.2.4'
  sha256 'e476eb093fc4624090f941d5767dc20edbcd12aca98bc388d8482606691452b9'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap delete: [
                "~/.CLion#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.CLion.plist',
                "~/Library/Preferences/clion#{version.major_minor.no_dots}",
                "~/Library/Application Support/clion#{version.major_minor.no_dots}",
                "~/Library/Caches/clion#{version.major_minor.no_dots}",
                "~/Library/Logs/clion#{version.major_minor.no_dots}",
              ]
end
