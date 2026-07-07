cask "proton-pass" do
  version "1.38.0"
  sha256 "0b07621c4a8a9e4f842e86afb35a7a343e3c7b6aef10506a6d742cefd8a14383"

  url "https://proton.me/download/pass/macos/ProtonPass_#{version}.dmg"
  name "Proton Pass"
  desc "Desktop client for Proton Pass"
  homepage "https://proton.me/pass"

  livecheck do
    url "https://proton.me/download/pass/macos/version.json"
    strategy :json do |json|
      json["Releases"]&.map do |item|
        next unless item["CategoryName"]&.match?("Stable")

        item["Version"]
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

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
