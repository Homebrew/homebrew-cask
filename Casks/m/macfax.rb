cask "macfax" do
  version "0.2.35"
  sha256 :no_check

  url "https://macfax.com/Macfax.dmg"
  name "Macfax"
  desc "Tamper-proof verification reports for Macs"
  homepage "https://macfax.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Macfax.app"

  zap trash: [
    "~/Library/Application Support/Macfax",
    "~/Library/Caches/com.macfax.app",
    "~/Library/HTTPStorages/com.macfax.app",
    "~/Library/Preferences/com.macfax.app.plist",
    "~/Library/Saved Application State/com.macfax.app.savedState",
  ]
end
