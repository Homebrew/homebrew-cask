cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.0.3,7040'
  sha256 'f93a5c11abeea99f93c58463296449a09aea6209d1dc7123dca91977d162534a'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
