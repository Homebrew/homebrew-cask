cask 'angry-ip-scanner' do
  version '3.5.5'
  sha256 'b0a1898b536d811f388b3fddd94d50c8bcec6e87f11a7c36e5d4e5761563eb4f'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
