cask "banking-4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "7.8.0,8000"
  sha256 :no_check

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
