cask 'mps' do
  version '3.3.4'
  sha256 '406cf308aacf9dee407c8cf34e7ffbd5ebaabd5ea4217ff0fef78ecc319dd2a4'

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
