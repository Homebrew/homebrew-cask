cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.4.6820'
  sha256 'a461876779e5a0fb126b07e8ff77367af995c2d0d0cf0e932120fe5b7c5cc0c8'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
