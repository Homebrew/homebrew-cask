cask "banking-4" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "7.4.0"
  sha256 "fb1c42e63c62ad8aa5c643f656001971900a05ff42cd354daf3f2bfc4aea5ae1"

  url "https://subsembly.com/download/MacBanking4.pkg"
  appcast "https://subsembly.com/banking4-macos-updates.php"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
