cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.3.2'
  sha256 'e80d3d9c23defa4713fd02b5d43abcf4dea8dc051b24a050cd9f4e533f495aa7'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  auto_updates true

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
