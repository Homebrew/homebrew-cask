cask 'lightproxy' do
  version '1.1.15'
  sha256 '0d6a265c05f6cfc97dcd39a17137934dcfc7cc249d04e9cdb9f7a91416842d0b'

  # gw.alipayobjects.com/os/LightProxy/ was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/a6d8f427-0b65-4967-9354-21a0d66cf4dd/LightProxy.dmg'
  appcast 'https://github.com/alibaba/lightproxy/tree/master/CHANGELOG'
  name 'LightProxy'
  homepage 'https://alibaba.github.io/lightproxy/'

  app 'LightProxy.app'

  uninstall_postflight do
    stdout, * = system_command '/usr/bin/security',
                               args: ['find-certificate', '-a', '-c', 'LigthProxy', '-Z'],
                               sudo: true
    hashes = stdout.lines.grep(%r{^SHA-256 hash:}) { |l| l.split(':').second.strip }
    hashes.each do |h|
      system_command '/usr/bin/security',
                     args: ['delete-certificate', '-Z', h],
                     sudo: true
    end
  end
end
