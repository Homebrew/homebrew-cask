cask "proton-pass" do
  version "1.23.0"
  sha256 "818df028ea498403dd5db830be19801bb69bfb48f1e50b2387b1b84c8066efba"

  url "https://proton.me/download/PassDesktop/darwin/universal/ProtonPass_#{version}.dmg"
  name "Proton Pass"
  desc "Desktop client for Proton Pass"
  homepage "https://proton.me/pass"

  livecheck do
    url "https://proton.me/download/PassDesktop/darwin/universal/version.json"
    strategy :json do |json|
      json["Releases"]&.map do |item|
        next unless item["CategoryName"]&.match?("Stable")

        item["Version"]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Proton Pass.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/me.proton.pass.electron..sfl*",
    "~/Library/Application Support/Proton Pass",
    "~/Library/Caches/me.proton.pass.electron",
    "~/Library/Caches/me.proton.pass.electron.ShipIt",
    "~/Library/HTTPStorages/me.proton.pass.electron",
    "~/Library/Logs/Proton Pass",
    "~/Library/Preferences/me.proton.pass.electron.plist",
    "~/Library/Saved Application State/me.proton.pass.electron.savedState",
  ]
end
