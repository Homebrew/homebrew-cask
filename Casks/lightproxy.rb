cask 'lightproxy' do
  version '1.1.29'
  sha256 'af717638710f82debe7b7b1fd0a22142d25c9d2650402cbdc693e8211d763d73'

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
