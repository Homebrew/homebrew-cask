cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.2.5.7327'
  sha256 '2b3c8de6fe2d74ea39ea562287c9f370af4f98c6b3dea0b8ada565fef6bfbcfa'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
