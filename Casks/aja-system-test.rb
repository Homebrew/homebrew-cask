cask :v1 => 'aja-system-test' do
  version :latest
  sha256 :no_check

  url 'https://www.aja.com/assets/products/files/90/AJASystemTestMac.zip'
  name 'AJA System Test'
  homepage 'https://www.aja.com/en/products/aja-system-test'
  license :unknown

  app 'AJA System Test.app'
end
