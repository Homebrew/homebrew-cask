cask 'qlimagesize' do
  version '1.6.0'
  sha256 :no_check

  url 'https://github.com/L1cardo/qlImageSize/releases/download/1.6.0/qlImageSize.qlgenerator.zip'
  appcast 'https://github.com/L1cardo/qlImageSize/releases.atom'
  name 'qlImageSize'
  homepage 'https://github.com/L1cardo/qlImageSize'

  qlplugin 'qlImageSize.qlgenerator'
end
