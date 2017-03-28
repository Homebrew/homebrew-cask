cask 'jaksta' do
  version '1.3.3'
  sha256 '8f54cdba4ab42aec0430cdc15f9fd62370391bd2c42e0b734d6d5adea0355f69'

  url "http://downloads.jaksta.com/release/mac/Jaksta-#{version}.dmg"
  appcast 'http://downloads.jaksta.com/release/mac/sparkle/JakstaforMac.xml',
          checkpoint: '164a2b0a2fa866c475947fe2ae1e4a1020f11ca6ab03d5525bc54fc41d274be1'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/products'

  app 'Jaksta.app'
end
