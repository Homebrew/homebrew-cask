cask 'sizzy' do
  version '0.11'
  sha256 '783242bf6652c7eac79da6d1fef3bbe86239819b8e0b7b74203203ae156ef0c8'

  url 'https://sizzy.co/get-app'
  appcast 'https://headway-widget.net/widgets/JAXRr7'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end
