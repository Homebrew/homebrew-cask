cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.9.4"
  sha256 arm:   "3e79b6280e11566b4ea9cea23488d4bb01ea3bb27e8651c531a585a9d1164f60",
         intel: "8deea88e8157becdb96cda089eb2aa9c4844a170bf7313dec6c6988ffd7ae4cc"

  url "https://releases.cherry-ai.com/Cherry-Studio-#{version}-#{arch}.zip"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://cherry-ai.com/"

  livecheck do
    url "https://releases.cherry-ai.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
