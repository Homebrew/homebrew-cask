cask "banking-4" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "7.5.0"
  sha256 "c5f4b7f885c66fb168ecc19b9bc1306a0cfc6a45cc45fd85de35a862a62b1c66"

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
