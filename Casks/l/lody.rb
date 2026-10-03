cask "lody" do
  arch arm: "arm64", intel: "x64"

  version "0.103.0"
  sha256 arm:   "020dbeb5386442c352a602955225c1d0d31b44bac3c9811e13c33f040d10b882",
         intel: "60ab67fa0d1c69e217b2a5b4f57bb028b9b06ade6bd5f53cb32110b61c80c81f"

  url "https://updates.lody.ai/production/Lody-#{version}-#{arch}.dmg"
  name "Lody"
  desc "Share coding agent sessions across desktop and mobile"
  homepage "https://lody.ai/"

  livecheck do
    url "https://updates.lody.ai/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Lody.app"

  zap trash: [
    "~/.lody",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.lody.desktop.sfl*",
    "~/Library/Application Support/Lody",
    "~/Library/Caches/ai.lody.desktop",
    "~/Library/HTTPStorages/ai.lody.desktop",
    "~/Library/Preferences/ai.lody.desktop.plist",
    "~/Library/Preferences/lody-desktop-nodejs",
  ]
end
