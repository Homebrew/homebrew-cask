cask "enpass" do
  version "6.6.1.809"
  sha256 "9f8e3e60faab1d233497636ec1ce31f2f81e21ead62c88f39c0ba19eaa0e9cdf"

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
