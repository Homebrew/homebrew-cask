cask 'mps' do
  version '2017.2,172.1127'
  sha256 '3552c1448d7f29b9fd1d52cf7e419f38600ffabc67f02436ebf3a523d1b2a295'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: '028b280cc13e22c8672b57fe3fb1167608dc61d542c87ef7390c8a179b514277'
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
