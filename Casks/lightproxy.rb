cask 'lightproxy' do
  version '1.1.14'
  sha256 '4530ecd308c2b7111bc6e5e58f412e8c31575970c4b697b935ee9226484da433'

  # gw.alipayobjects.com/os/LightProxy/ was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/LightProxy.dmg'
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
