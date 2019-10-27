cask 'banking-4' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '7.2.0,7222'
  sha256 '28e59fc89edf76101b8e41085fc92d256b95e42835cd013223ef4865a31b08cd'

  url 'https://subsembly.com/download/MacBanking4.pkg'
  appcast 'https://subsembly.com/banking4-macos-updates.php'
  name 'Banking 4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking4.pkg'

  uninstall pkgutil: 'com.subsembly.Banking4'
end
