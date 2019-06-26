cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.0.5,7116'
  sha256 '779218cb99d364dcbc94eaef9eb74a8c8b4e8e310d34072368956071454cc9f4'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
