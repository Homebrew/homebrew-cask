cask 'lightproxy' do
  version '1.1.12'
  sha256 '56c82500f8e8321dcf7418e0b4d543982b07e549c982862ea8e71276811228f6'

  # gw.alipayobjects.com/os/LightProxy/ was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/LightProxy.dmg'
  appcast 'https://github.com/alibaba/lightproxy/tree/develop/CHANGELOG'
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
