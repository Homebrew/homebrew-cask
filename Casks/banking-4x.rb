cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.9,6900'
  sha256 '7525f9d94ed6df1ea7d22d97d5feb7f346abfb56e8f3022ac1b80add46276f44'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
