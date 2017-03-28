cask 'mps' do
  version '3.4.4,162.2317'
  sha256 '068cad86ae8fa40674e3b663328587b466a4c3a0560b0789746e77953260030e'

  url "https://download.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: '6d4719383be0ba428be0d2c2609f27e6da2e1c98f545ffee11ebbc7717166dbf'
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
