cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.1.0,7181'
  sha256 'a0ca8aa959ae5c423c0e28fec9cf213b1471397cb910e9a23db8182ffbe79da2'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
