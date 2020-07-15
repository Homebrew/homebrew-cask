cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.3.7'
  sha256 '8196842ddad5c7a615abb59879145eb92cf7a28a46dc9d6bc61d6bf0e3c08e5b'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  auto_updates true

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
