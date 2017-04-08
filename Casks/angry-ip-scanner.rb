cask 'angry-ip-scanner' do
  version '3.5.1'
  sha256 '3283db621b621cbd7761709125c8097dc52ef0b9329bd25c9eb79a162b86eb12'

  # github.com/angryziber/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom',
          checkpoint: 'd3e193b2867c3e37d0516b1d12363026c8dd80b7069b2d69b082f5edea7b6493'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org/'

  app 'Angry IP Scanner.app'
end
