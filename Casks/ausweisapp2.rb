cask 'ausweisapp2' do
  version '1.8.0'
  sha256 '54c3e259508355cebb2929822aec7f050981959fe466888de47e7cc9992bf336'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  homepage 'https://www.ausweisapp.bund.de/startseite/'
  license :gratis

  auto_updates true

  app 'AusweisApp2.app'
end
