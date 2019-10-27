cask 'shimo' do
  version '5.0.1_8877'
  sha256 '1a61b37bcb862bbe52bd368234f0c41d2ca1268933befdcd4728e61fbd30d9b8'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  appcast "https://www.shimovpn.com/appcast#{version.major}.php"
  name 'Shimo'
  homepage 'https://www.shimovpn.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Shimo.app'
end
