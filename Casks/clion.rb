cask 'clion' do
  version '2016.3.2'
  sha256 'c3140f5f593a6e1e83a92749fa86de1efece830ba7a9124b4fa4b9cfd8a5281b'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: 'c1e30f5c65a932f247f4667b05f84553d35dc6aa92270dd70f3d4bb928940955'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true
  conflicts_with cask: 'clion-eap'

  app 'CLion.app'

  zap delete: [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
