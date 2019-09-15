cask 'angry-ip-scanner' do
  version '3.6.1'
  sha256 '00d223d61d1569d44bfe81805359f94c15c9549473762016605287c31733bae6'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
