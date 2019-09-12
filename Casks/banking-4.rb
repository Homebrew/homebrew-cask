cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.1.0,7192'
  sha256 'c19ed18f5197f0160328018a45209c0f0ea1c4e20aed4046cb545110cde64542'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
