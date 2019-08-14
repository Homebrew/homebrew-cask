cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.1.0,7160'
  sha256 '9fb3e0740daf22372aab4b730776f21c61b29557a74fe128047a77fbf2bb3a07'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
