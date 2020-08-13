cask "banking-4" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "7.3.8"
  sha256 "f56e116855f67b0953138f88b5b5539918b3b8d8e7df1ae6def4ee37242abeeb"

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
