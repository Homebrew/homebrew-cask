cask 'angry-ip-scanner' do
  version '3.6.2'
  sha256 '5f36bb51a099a20c72d69123aa5b17558fa78ba37b5d340b8db9877e4055ad0e'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
