cask 'catlight' do
  if MacOS.version < '10.12'
    version '2.12.5'
    sha256 'e69a1dca258583d5fb16d45b71a04fe06f6f845d11bb4a4d9e909c7c3f3a835b'
  elsif MacOS.version >= '10.12'
    version '2.14.5'
    sha256 '912a85e9da25eb65707869cee69c8eb84cbcc5c5169f98ef55df4910300b106e'
  end
  url "https://www.catlight.io/dl/mac/beta/setup-#{version}.zip"
  name 'catlight'
  homepage 'https://catlight.io/'

  app 'Catlight.app'
end
