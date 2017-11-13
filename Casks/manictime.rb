cask 'manictime' do
  version '1.4.0'
  sha256 '2072e484087f1c41364f66b1f4f897be57c974b7608f9271bdd91df2cd507229'

  url "http://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  name 'ManicTime'
  homepage 'https://www.manictime.com/Mac'

  pkg "ManicTime-#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'

  zap delete: '~/Library/Application Support/ManicTime'
end
