cask 'angry-ip-scanner' do
  version '3.7.1'
  sha256 'e6e45b8cce5e26017e9c4033b2c9d21a32a30c850f13c39095f8aa2571241c81'

  # github.com/angryip/ipscan/ was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
