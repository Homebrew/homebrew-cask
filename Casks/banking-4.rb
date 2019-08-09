cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.1.0,7149'
  sha256 '3a22152982211507f7d71d3785905db757113020e0018b0677f6a8a91dd1ecf0'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
