cask 'angry-ip-scanner' do
  version '3.7.0'
  sha256 '9b473206df119def590d2f515c19cb3db7084c1d3a2ec1199313f551bd6013ec'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
