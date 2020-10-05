cask "enpass" do
  version "6.5.1.723"
  sha256 "7a6cfd8f51495cfb872af5201769255fec55046dc4afe30116a4fa501f3b8331"

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
