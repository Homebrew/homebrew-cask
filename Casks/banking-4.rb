cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.0.3,7023'
  sha256 '9c970d318f98f93a7a1b8f4d6dfac96b801d1c0f87453bab0e4923dee539f73c'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
