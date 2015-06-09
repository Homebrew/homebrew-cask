cask :v1 => 'aja-system-test' do
  version :latest
  sha256 'e3f1f37e7d32dabe72ed0575333f2bf0d6e8afd968935c98d57fd0935fe15657'

  url 'https://www.aja.com/assets/products/files/90/AJASystemTestMac.zip'
  name 'AJA System Test'
  homepage 'https://www.aja.com/en/products/aja-system-test'
  license :unknown

  app 'AJA System Test.app'
end
