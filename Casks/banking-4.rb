cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.1.0,7199'
  sha256 'b2277ef8d48f0381f8c427d513ffe6244ea1f8a9345fac27872e69253bfb3e29'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
