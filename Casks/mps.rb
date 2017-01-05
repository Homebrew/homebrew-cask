cask 'mps' do
  version '3.4.2'
  sha256 '6ad94b85582764130e1533fa9eb24ae1e5476a96817446243ccb24e5bbfe9ac7'

  url "https://download-cf.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
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
