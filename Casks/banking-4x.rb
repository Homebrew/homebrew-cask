cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.7,6848'
  sha256 'bc6b168fe9f307d753a65944fadd371eef681950b1241e4d1c6025a564966a24'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
