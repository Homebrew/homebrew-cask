cask 'clion' do
  version '2016.1.2'
  sha256 'cc3af250ba762741cfc9e3bdcb62863336e89ebf506043f73f043c51f9f626dd'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap delete: [
                "~/.CLion#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.clion.*.plist',
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
