cask 'core-tunnel' do
  version '1.0,905'
  sha256 '798f9ad58174d4ec894389b7141e11007ec35b75844de66f11cf27e5b8694dee'

  # update.codinn.com/media/sparkle was verified as official when first introduced to the cask
  url "https://update.codinn.com/media/sparkle/Core_Tunnel-#{version.after_comma}.zip"
  appcast 'https://update.codinn.com/sparkle/2/appcast.xml'
  name 'Core Tunnel'
  homepage 'https://coressh.io/'

  auto_updates true

  app 'Core Tunnel.app'

  uninstall quit: 'io.coressh.tunnel'
end
