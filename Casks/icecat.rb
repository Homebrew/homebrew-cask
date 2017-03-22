cask 'icecat' do
  version '38.8.0'
  sha256 '895340df6baf3640d8d7fbb9e690edc2b1d14bf59082ad5f01d310f81e318e31'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac64.dmg"
  appcast 'https://ftp.gnu.org/gnu/gnuzilla/',
          checkpoint: 'fefdf580e7f0188808ba1053fbc435bc0e80e133e63b7194ab007a92464e69ca'
  name 'IceCat'
  homepage 'https://www.gnu.org/software/gnuzilla/'

  app 'IceCat.app'
end
