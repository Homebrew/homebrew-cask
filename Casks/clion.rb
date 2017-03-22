cask 'clion' do
  version '2016.3.5'
  sha256 'bc4d29ca8ba6b54f37f81372cfc3492d476246b39783dc89c5bbc33e99f2e86c'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '17803b3e7a50a31d23334273bea66d9d8ebe8d1ba638cd7d722db5f3adc168e0'
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
