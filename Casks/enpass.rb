cask "enpass" do
  version "6.8.0.1059"
  sha256 "da0cbaea9bf6cd9ecaafaea03629cc4783ad6f735c8e3b2950651489aa0a69c0"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials mananger"
  homepage "https://www.enpass.io/"

  livecheck do
    url "https://www.enpass.io/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/Enpass\.pkg}i)
  end

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
