cask 'mps' do
  version '3.3.5'
  sha256 'ecde1c1faf4d425a69c44befaf19b64068e74a1ca2dd9044c4b750f996b8254a'

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
