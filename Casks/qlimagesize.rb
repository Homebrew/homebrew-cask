cask 'qlimagesize' do
  version :latest
  sha256 :no_check

  url 'https://github.com/L1cardo/qlImageSize/releases/download/1.6.0/qlImageSize.qlgenerator.zip'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  qlplugin 'qlImageSize.qlgenerator'
end
