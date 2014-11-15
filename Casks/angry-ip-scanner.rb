cask :v1 => 'angry-ip-scanner' do
  version '3.3.1'
  sha256 '5e3df2bbf690bb6e9c58ac2ca4a1ae825d5242159846e5b712c89afd839f6f0c'

  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  homepage 'http://angryip.org'
  license :gpl

  app 'Angry IP Scanner.app'
end
