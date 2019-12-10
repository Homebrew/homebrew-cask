cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.2.2,7272'
  sha256 '331ddc867919a0a6474ed9969d1e1a886e33b4601d94004337fbd4a968cf35f2'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
