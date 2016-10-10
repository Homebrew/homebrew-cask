cask 'qlimagesize' do
  version :latest
  sha256 :no_check

  # repo.whine.fr was verified as official when first introduced to the cask
  url 'https://repo.whine.fr/qlImageSize.pkg'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  pkg 'qlImageSize.pkg'

  uninstall pkgutil: 'io.whine.qlimagesize.pkg'
end
