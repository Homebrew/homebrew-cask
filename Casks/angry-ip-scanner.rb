cask :v1 => 'angry-ip-scanner' do
  version '3.3.3'
  sha256 '5fec32c0fd6dae3b84bd2533e69916a65066176439e8b8481dffc2c565ac70cd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org'
  license :gpl

  app 'Angry IP Scanner.app'
end
