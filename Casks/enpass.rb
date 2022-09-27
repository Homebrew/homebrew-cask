cask "enpass" do
  version "6.8.3.1153"
  sha256 "e732eba5866e149c5e7aaccdf91ab66aba17d2a2197eff32c3c1520eaeab3bf9"

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
