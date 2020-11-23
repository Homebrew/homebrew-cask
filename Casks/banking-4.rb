cask "banking-4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "7.5.1"
  sha256 "ca4884641d0225fa06196722e02907a9ac032ae34c86c78b02e27e4b2e0eeb07"

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
