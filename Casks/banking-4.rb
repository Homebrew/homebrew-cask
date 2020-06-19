cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.3.5'
  sha256 'e58d80ddaad8afa502e768a0fa2e1f83794b83de0d9d88042ad791a5d9bc5457'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  auto_updates true

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
