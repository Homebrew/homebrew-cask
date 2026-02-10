cask "boltai@1" do
  version "1.36.5"
  sha256 "3391e8133eb4be2d48c36af5921f3dbc34a847728d32962d476f065ab38161f5"

  url "https://download.boltai.com/releases/BoltAI-#{version}.dmg"
  name "BoltAI"
  desc "AI chat client"
  homepage "https://boltai.com/"

  livecheck do
    url "https://boltai.com/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-06-01", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :monterey"

  app "BoltAI.app"

  zap trash: [
    "~/.boltai",
    "~/Library/Application Support/co.podzim.BoltGPT",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.podzim.BoltGPT.*",
    "~/Library/Caches/co.podzim.BoltGPT",
    "~/Library/Caches/SentryCrash/BoltAI",
    "~/Library/HTTPStorages/co.podzim.BoltGPT",
    "~/Library/Preferences/co.podzim.BoltGPT.plist",
    "~/Library/Saved Application State/co.podzim.BoltGPT.savedState",
    "~/Library/WebKit/co.podzim.BoltGPT",
  ]
end
