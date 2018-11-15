cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.8,6892'
  sha256 'df4584ce42c6eb128eb4f838e0edb4162d40e45130d4b62fcff474c4ca11d11e'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
