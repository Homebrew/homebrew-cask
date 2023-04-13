cask "nozbe" do
  version "2023.15"
  sha256 "96f915990b1ad1a505597e8d493d9a6783f5abc097446ed35e769e9dabcd2f39"

  url "https://builds.nozbe.com/mac/#{version}/Nozbe.app.zip"
  name "Nozbe"
  desc "Project management app"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://nozbe.help/general/release-notes"
    regex(/id=["']newest["'][^>]*?>\s*version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "Nozbe.app"

  zap trash: [
    "~/Library/Application Support/Nozbe4",
    "~/Library/Caches/com.nozbe4mac",
    "~/Library/Caches/com.nozbe4mac.ShipIt",
    "~/Library/HTTPStorages/com.nozbe4mac",
    "~/Library/Preferences/com.nozbe4mac.plist",
    "~/Library/Saved Application State/com.nozbe4mac.savedState",
  ]
end
