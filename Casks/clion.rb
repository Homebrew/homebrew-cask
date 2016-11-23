cask 'clion' do
  version '2016.3'
  sha256 '8bafc82b8dc30101257846338afaeb458412a863de35ce93c8a170ebb4d73420'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  conflicts_with cask: 'clion-eap'

  app 'CLion.app'

  zap delete: [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
