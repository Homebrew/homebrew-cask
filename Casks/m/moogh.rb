cask "moogh" do
  version "2026.9.28-1"

  on_arm do
    sha256 "7fe26d9909ec6261643145a07d84d0334a453cd8072e646d6d3cb9425663daca"

    url "https://down.aimoogh.com/downloads/mac_arm64/stable/#{version}/moogh-mac-arm64-#{version}.zip",
        verified: "down.aimoogh.com/downloads/mac_arm64/stable/"
  end

  on_intel do
    sha256 "8e6162637e2cc72aa8c7a220b94d984a821f6ef26ef1b016dab7f4e6fc79dbc6"

    url "https://down.aimoogh.com/downloads/mac_x64/stable/#{version}/moogh-mac-x64-#{version}.zip",
        verified: "down.aimoogh.com/downloads/mac_x64/stable/"
  end

  name "MOOGH"
  desc "AI agent desktop client that plans and executes tasks on your own computer"
  homepage "https://www.aimoogh.com/"

  livecheck do
    url "https://down.aimoogh.com/downloads/mac_arm64/updates/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MOOGH.app"

  zap trash: [
    "~/Library/Application Support/MOOGH",
    "~/Library/Caches/ai.gozi.desktop",
    "~/Library/Logs/MOOGH",
    "~/Library/Preferences/ai.gozi.desktop.plist",
    "~/Library/Saved Application State/ai.gozi.desktop.savedState",
  ]
end
