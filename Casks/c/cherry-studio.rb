cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.7.17"
  sha256 arm:   "b77e1d4994695d4df4f5468ac74f036a59198bb6a8aca3dfe83eb74a191de58b",
         intel: "4d02adb9cc7ab7a6e5a12685df615ca524f7bfefed82018609d3f85afd2c4917"

  url "https://releases.cherry-ai.com/Cherry-Studio-#{version}-#{arch}.zip"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://cherry-ai.com/"

  livecheck do
    url "https://releases.cherry-ai.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Cherry Studio.app"
  binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

  zap trash: [
    "~/Library/Application Support/CherryStudio",
    "~/Library/Caches/cherrystudio-updater",
    "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
    "~/Library/Logs/CherryStudio",
    "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
    "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
  ]
end
