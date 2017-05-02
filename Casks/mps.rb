cask 'mps' do
  version '2017.1.1,171.1216'
  sha256 '981e55215d77fd4124359e53f702fe975adf067ca0954d52a3a725fdc45fb69a'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: 'f5cd8509511842a6833a7e0c84adab8d1829ed0d178f0d3b14570d0fbb0c0272'
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
