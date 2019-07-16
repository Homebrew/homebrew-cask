cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.0.6,7135'
  sha256 'fe90252e7814f848d6602f93d862b8cfb166a81db686b46bfefd4a8d045843fd'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
