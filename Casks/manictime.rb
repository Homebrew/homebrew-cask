cask 'manictime' do
  version '2.0.27'
  sha256 '534ef3cd29d1838502357a6285dc7706e4a289d0e9379420b02edce1d71b19eb'

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  appcast 'https://www.manictime.com/mac/download'
  name 'ManicTime'
  homepage 'https://www.manictime.com/Mac'

  depends_on macos: '>= :sierra'

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'

  zap trash: '~/Library/Application Support/ManicTime'
end
