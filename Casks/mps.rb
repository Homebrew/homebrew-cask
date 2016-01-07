cask 'mps' do
  version '3.3'
  sha256 'c7f21e2f27329523cb16b79806393009b63f86fe50576ea9e595e54176b5a441'

  url "http://download-cf.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
  name 'MPS'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps'
  license :apache

  app "MPS #{version.major_minor}.app"

  zap :delete => [
                   "~/Library/Application Support/MPS#{version.tr('.', '')[0, 2]}",
                   "~/Library/Preferences/MPS#{version.tr('.', '')[0, 2]}",
                 ]
end
