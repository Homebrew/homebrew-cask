cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.3.3'
  sha256 '0b62b3c3b74e5956ae526001192b754d6f9c3964c2e027a5deac3ea5298a1e95'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  auto_updates true

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
