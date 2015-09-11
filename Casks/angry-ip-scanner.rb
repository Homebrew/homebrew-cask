cask :v1 => 'angry-ip-scanner' do
  version '3.4'
  sha256 '56976a6b2d3b62ef3e46626df51eb20a4e849e346a5292bf923481f4efb5da4a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org'
  license :gpl

  app 'Angry IP Scanner.app'
end
