cask "boltai" do
  version "1.15.15"
  sha256 "92bd318842b49472cf5fc606922f10731fb7052fe1ef6bc0438c78177eddef62"

  url "https://download.boltai.com/releases/BoltAI-#{version}.dmg"
  name "BoltAI"
  desc "AI chat client"
  homepage "https://boltai.com/"

  livecheck do
    url "https://boltai.com/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "BoltAI.app"

  zap trash: [
    "~/Library/Application Support/co.podzim.BoltGPT",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.podzim.BoltGPT.*",
    "~/Library/Caches/co.podzim.BoltGPT",
    "~/Library/HTTPStorages/co.podzim.BoltGPT",
    "~/Library/Preferences/co.podzim.BoltGPT.plist",
    "~/Library/Saved Application State/co.podzim.BoltGPT.savedState",
    "~/Library/WebKit/co.podzim.BoltGPT",
  ]
end
