cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.2.0,7205'
  sha256 'f460af1f58573a9727941ab864661c6d1a6cd3865cdd10adb2454794a63fb834'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
