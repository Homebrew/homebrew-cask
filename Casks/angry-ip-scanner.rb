cask 'angry-ip-scanner' do
  version '3.5.2'
  sha256 '461c507d612d0d88c91ef4dde79f266ecbaa3b5518df24597b8b40af6dc90ddb'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom',
          checkpoint: 'e02fcc8d4e65077392bb92aefc66eb7876d6f8c52b90641362ddff5355104ee1'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org/'

  app 'Angry IP Scanner.app'
end
