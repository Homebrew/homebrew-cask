cask 'catlight' do
  version '2.14.5'
  sha256 '912a85e9da25eb65707869cee69c8eb84cbcc5c5169f98ef55df4910300b106e'

  url "https://www.catlight.io/dl/mac/beta/setup-#{version}.zip"
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
