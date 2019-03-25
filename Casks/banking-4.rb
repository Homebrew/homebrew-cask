cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.0.2,7012'
  sha256 '797808b8503f4b95db05918f36f4db8f5651a8ab37c4b2856de79fac8c476fa7'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
