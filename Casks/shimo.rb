cask 'shimo' do
  version '5.0.2_8880'
  sha256 '09364783b6dcc13b1ef54feaf4c57d1518f25a6c6e3884c9ab6c2a6077942b2a'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  appcast "https://www.shimovpn.com/appcast#{version.major}.php"
  name 'Shimo'
  homepage 'https://www.shimovpn.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Shimo.app'
end
