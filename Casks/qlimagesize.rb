cask :v1 => 'qlimagesize' do
  version :latest
  sha256 :no_check

  # whine.fr is the official download host per the vendor homepage
  url 'http://repo.whine.fr/qlImageSize.pkg'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'
  license :bsd

  pkg 'qlImageSize.pkg'

  uninstall :pkgutil => 'io.whine.qlimagesize.pkg'
end
