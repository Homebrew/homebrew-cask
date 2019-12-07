cask 'manictime' do
  version '2.0.26'
  sha256 '484295bf0f59eeffb4ad415a3fcab21bf1be65354e2be83dfdbdfa89a739d06f'

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  appcast 'https://www.manictime.com/mac/download'
  name 'ManicTime'
  homepage 'https://www.manictime.com/Mac'

  depends_on macos: '>= :sierra'

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'

  zap trash: '~/Library/Application Support/ManicTime'
end
