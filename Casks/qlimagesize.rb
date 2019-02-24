cask 'qlimagesize' do
  version '1.6.1'
  sha256 'd7110f94a6be53e01d01ed92fb894395f54c0e2db7e69507d4eaf2970942a820'

  url "https://github.com/Nyx0uf/qlImageSize/releases/download/#{version}/qlImageSize.qlgenerator.zip"
  appcast 'https://github.com/martindelille/qlimagesize/releases.atom'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  qlplugin 'qlImageSize.qlgenerator'
end
