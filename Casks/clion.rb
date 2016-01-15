cask 'clion' do
  version '1.2.4'
  sha256 'e476eb093fc4624090f941d5767dc20edbcd12aca98bc388d8482606691452b9'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                   '~/Library/Preferences/com.jetbrains.CLion.plist',
                   '~/Library/Preferences/clion12',
                   '~/Library/Application Support/clion12',
                   '~/Library/Caches/clion12',
                   '~/Library/Logs/clion12',
                 ]
end
