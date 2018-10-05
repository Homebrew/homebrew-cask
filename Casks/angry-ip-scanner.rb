cask 'angry-ip-scanner' do
  version '3.5.3'
  sha256 '5c80fae298c7042c21a46ba76985ab79303001af8b26ea073712d5bff68c7215'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
