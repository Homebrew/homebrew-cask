cask 'clion' do
  version '2016.3.4'
  sha256 '9cc76ac67c5dd25dee63fe47bbf3131b73214e390d3406fc0327bceb725546c7'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: 'f48a8b3797cd281e6f578341c83bf6d0914a5fa9291f499f66dc8680dea3216e'
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
