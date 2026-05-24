cask "macfax" do
  version "0.2.56"
  sha256 "b6d9aeb8b8ec033807ff74535a80287ff431a1d71074117fc4da3d7c0ab6e99a"

  url "https://macfax.com/Macfax-#{version}.dmg"
  name "Macfax"
  desc "Tamper-proof verification reports for Macs"
  homepage "https://macfax.com/"

  livecheck do
    url "https://macfax.com/Macfax.dmg"
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
