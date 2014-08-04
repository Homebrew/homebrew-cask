class Qlimagesize < Cask
  version 'latest'
  sha256 :no_check

  url 'http://repo.whine.fr/qlImageSize.qlgenerator-10.8.zip'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  qlplugin 'qlImageSize.qlgenerator'
end
