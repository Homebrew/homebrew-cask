cask 'mps' do
  version '2017.1.2,171.1342'
  sha256 '6bffb7239753f334315f5c32a4e946e54452ee3b374a5d5abdc3a45c73cab9d4'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: '43080b34d73cb0d147067ba5e51d125a97d9cef6feac0135be23c2fd37df42bf'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps/'

  auto_updates true

  app "MPS #{version.major_minor}.app"

  zap delete: [
                "~/MPSSamples.#{version.before_comma.major_minor}",
                "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
                "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
                "~/Library/Caches/MPS#{version.before_comma.major_minor}",
                "~/Library/Logs/MPS#{version.before_comma.major_minor}",
              ]
end
