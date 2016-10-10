cask 'aja-system-test' do
  version '2.1.0'
  sha256 '53fa38382d73a0e70a88f5f23fdb384612fd57dd8ae1bb28fe49a7896b321bac'

  url "https://www.aja.com/assets/products/files/90/AJA_SystemTest-#{version}.app.zip"
  name 'AJA System Test'
  homepage 'https://www.aja.com/en/products/aja-system-test'

  app 'AJA System Test.app'
end
