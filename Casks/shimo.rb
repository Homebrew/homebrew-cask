cask 'shimo' do
  version '5.0_8874'
  sha256 'de91af81d5ad9982f1dbfaf4b6cdebf98ccf423745e8b54ab216a1448179888f'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  appcast "https://www.shimovpn.com/appcast#{version.major}.php"
  name 'Shimo'
  homepage 'https://www.shimovpn.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Shimo.app'
end
