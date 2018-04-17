cask 'icecat' do
  version '38.8.0'
  sha256 '895340df6baf3640d8d7fbb9e690edc2b1d14bf59082ad5f01d310f81e318e31'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac64.dmg"
  appcast 'https://ftp.gnu.org/gnu/gnuzilla/',
          checkpoint: 'ed5338188eab1fa536bed4054300d3210cd3587bc26c217d97c8d25b1dfeeb4b'
  name 'IceCat'
  homepage 'https://www.gnu.org/software/gnuzilla/'

  app 'IceCat.app'
end
