cask 'ausweisapp2' do
  version '2-1.20.0'
  sha256 '76c60930e58cdf05df05c4eb0c485b1d0931a9a6dc647b4737ca1316bcf8e873'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp#{version}.dmg"
  name 'AusweisApp2'
  homepage 'https://www.ausweisapp.bund.de/ausweisapp2'

  app 'AusweisApp2.app'
end
