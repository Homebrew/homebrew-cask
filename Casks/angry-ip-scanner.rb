cask 'angry-ip-scanner' do
  version '3.5.1'
  sha256 '3283db621b621cbd7761709125c8097dc52ef0b9329bd25c9eb79a162b86eb12'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom',
          checkpoint: '6d6ec55fce2ab10346564d7990c4645dbb1b63c71d6f4fc73922c49051f53e21'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org/'

  app 'Angry IP Scanner.app'
end
