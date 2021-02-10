cask "enpass" do
  version "6.6.0.775"
  sha256 "d5c08071267e91bbd5428e580d38b72d27a2c9ddd6ba4b2afb3d04e3b8f55cc1"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  appcast "https://rest.enpass.io/enpass/alert/?format=json&language=en%7Cen&os=osx%7C10.14&package=in.sinew.Enpass-Desktop.App&version=0.0.0"
  name "Enpass"
  desc "Password and credentials mananger"
  homepage "https://www.enpass.io/"

  depends_on macos: ">= :sierra"

  pkg "Enpass.pkg"

  uninstall pkgutil: "in.sinew.Enpass-Desktop.App"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop",
    "~/Library/Caches/in.sinew.Enpass-Desktop",
    "~/Library/Preferences/in.sinew.Enpass-Desktop.plist",
    "~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState",
  ]
end
