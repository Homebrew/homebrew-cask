cask :v1 => 'sonic-pi' do
  version '2.8.0'
  sha256 '2e6cceb30d2c464e38810d2e8baadde315fc196aff75f0bb4d445c46a02a9a74'

  url "http://sonic-pi.net/files/releases/#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'
  license :mit

  app 'Sonic Pi.app'
end
