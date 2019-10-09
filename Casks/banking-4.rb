cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.2.0,7219'
  sha256 '47da26b9c1f7cc7ec862605b8d66349b124bbbc4f9cda4a3bd5e5544c13db80c'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
