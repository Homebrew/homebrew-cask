cask "boltai" do
  version "1.27.3"
  sha256 "e5e96b7c0182c80f9e55266895a8cd040980cbeb61b8c12a0785958840b6526b"

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
