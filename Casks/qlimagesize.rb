cask :v1 => 'qlimagesize' do
  version :latest
  sha256 :no_check

  url 'http://repo.whine.fr/qlImageSize.qlgenerator-10.8.zip'
  homepage 'https://github.com/Nyx0uf/qlImageSize'
  license :oss

  qlplugin 'qlImageSize.qlgenerator'
end
