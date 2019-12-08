cask 'ausweisapp2' do
  version '1.16.2'
  sha256 '630c491fea0897018e2588d98c77dd8cd63dd2126cad8eba9b631bee538f6c85'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  appcast 'https://www.ausweisapp.bund.de/download/windows-und-mac/'
  name 'AusweisApp2'
  homepage 'https://www.ausweisapp.bund.de/'

  auto_updates true

  app 'AusweisApp2.app'
end
