cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.3.4'
  sha256 'a85ba1e40047c5cc17e53b658f8fe1e515a865599f8273569f5efdb67cb46a9d'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  auto_updates true

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
