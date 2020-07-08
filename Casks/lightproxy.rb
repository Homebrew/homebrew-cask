cask 'lightproxy' do
  version '1.1.26'
  sha256 '44007cef95675ccf1412dea30756a754578e7358d365dd061d98135e46a28278'

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
