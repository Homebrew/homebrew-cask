cask 'lightproxy' do
  version '1.1.22'
  sha256 'b3190414ff17383ed62f495c1fb23eceb14e812208f57478fce5c8e4bc311d38'

  # github.com/alibaba/lightproxy/ was verified as official when first introduced to the cask
  url "https://github.com/alibaba/lightproxy/releases/download/v#{version}/LightProxy-#{version}.dmg"
  appcast 'https://github.com/alibaba/lightproxy/releases.atom'
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
