cask "banking-4" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "7.4.2"
  sha256 "12e02fa35b9fb9230ad9f67a44bba1501731ee6ce8bfd8918557157d1cdad966"

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
