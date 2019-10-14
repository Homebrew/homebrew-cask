cask 'manictime' do
  version '2.0.25'
  sha256 'd1eb51fff19cce62801d7d150ea68b100978180ab0d511d30346d044ed7639f2'

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  appcast 'https://www.manictime.com/mac/download'
  name 'ManicTime'
  homepage 'https://www.manictime.com/Mac'

  depends_on macos: '>= :sierra'

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'

  zap trash: '~/Library/Application Support/ManicTime'
end
