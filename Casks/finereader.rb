cask 'finereader' do
  version :latest
  sha256 :no_check

  url 'https://downloads.abbyy.com/fr/fr_mac/current/ABBYYFineReaderPro.dmg?secure=EOkGXxyiKvTXMK8VEYyT1g=='
  name 'ABBYY FineReader Pro'
  homepage 'https://www.abbyy.com/finereader-pro-mac-downloads/'

  app 'FineReader.app'
end
