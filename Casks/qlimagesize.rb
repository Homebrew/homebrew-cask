cask :v1 => 'qlimagesize' do
  version :latest
  sha256 :no_check

  url 'http://repo.whine.fr/qlImageSize.pkg'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'
  license :oss

  pkg 'qlImageSize.pkg'

  uninstall :pkgutil => 'io.whine.qlimagesize.pkg'
end
