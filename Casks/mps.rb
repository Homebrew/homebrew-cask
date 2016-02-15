cask 'mps' do
  version '3.3.2'
  sha256 '70e43db0263dbfaf0175245e4abd17381b73998b90dfdd3d7dc3b04ca7d1b820'

  url "http://download-cf.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps'
  license :apache

  app "MPS #{version.major_minor}.app"

  zap delete: [
                "~/Library/Application Support/MPS#{version.tr('.', '')[0, 2]}",
                "~/Library/Preferences/MPS#{version.tr('.', '')[0, 2]}",
              ]
end
