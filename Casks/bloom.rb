cask 'bloom' do
  version :latest
  sha256 :no_check

  url 'https://thebloomapp.com/dn/Bloom.pkg'
  name 'Bloom'
  homepage 'https://thebloomapp.com/features/'
  license :commercial

  pkg 'Bloom.pkg'

  uninstall pkgutil: 'com.sadcatsoft.bloom.Bloom.pkg'
end
