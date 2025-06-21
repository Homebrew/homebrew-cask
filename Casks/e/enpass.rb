cask "enpass" do
  version "6.11.12.2003"
  sha256 "b89e14c47e0811bc6857fe12970bcecc14f21dfdbceb19c886aa0cb944a15e26"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials manager"
  homepage "https://www.enpass.io/"

  livecheck do
    url "https://www.enpass.io/download/macos/website/stable"
    strategy :header_match
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
