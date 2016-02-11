cask 'angry-ip-scanner' do
  version '3.4.1'
  sha256 '0676d3458ff6562c5b7fb3229fa9b9fa02e055ea773ce8ecbe45c4f01c43febb'

  # github.com/angryziber/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom',
          checkpoint: 'f26581a15e3c835964b4b31a3a9c5250bf77ac7678b1f699876b2274687a4d63'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org'
  license :gpl

  app 'Angry IP Scanner.app'
end
