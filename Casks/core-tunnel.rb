cask 'core-tunnel' do
  version '1.0-beta.3,884'
  sha256 'cff14e17eec0fd8385b7e6656fd733c983ce465999364251764b8c5e8c405b3e'

  # update.codinn.com/media/sparkle was verified as official when first introduced to the cask
  url "https://update.codinn.com/media/sparkle/Core_Tunnel-#{version.after_comma}.zip"
  appcast 'https://update.codinn.com/sparkle/2/appcast.xml',
          checkpoint: 'e117d5e59b9ba9accd78146a416b84f92e22036cb32e4fae6431c54c4b33d4e4'
  name 'Core Tunnel'
  homepage 'https://coressh.io/'

  auto_updates true

  app 'Core Tunnel.app'

  uninstall quit: 'io.coressh.tunnel'
end
