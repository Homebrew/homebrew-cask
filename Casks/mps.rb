cask 'mps' do
  version '2017.1,171.1065'
  sha256 '989ffc53e63bbf4fe6239c5253e6555f9ec7490b4861cc95c0043e0733491f96'

  url "https://download.jetbrains.com/mps/#{version.before_comma}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: '9d5a7ebd2a13e2ff6c63a3f09912769640814787e079419b902e5cbd7e32d2b7'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps/'

  conflicts_with cask: 'mps-eap'

  app "MPS #{version.major_minor}.app"

  zap delete: [
                "~/MPSSamples.#{version}",
                "~/Library/Application Support/MPS#{version.major_minor.no_dots}",
                "~/Library/Preferences/MPS#{version.major_minor.no_dots}",
                "~/Library/Caches/MPS#{version.major_minor.no_dots}",
                "~/Library/Logs/MPS#{version.major_minor.no_dots}",
              ]
end
