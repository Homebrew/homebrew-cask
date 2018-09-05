cask 'parsec' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/parsec-build was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/parsec-build/package/parsec-macos.pkg'
  name 'Parsec'
  homepage 'https://parsecgaming.com/'

  pkg 'parsec-macos.pkg'

  postflight do
    set_ownership '~/.parsec'
  end

  uninstall pkgutil: 'tv.parsec.www'
end
