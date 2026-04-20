cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.62.0"
  sha256 arm:   "2753ac925fe4b744832628c8529e520606d1f772226a367c1696e2da3f2cf75c",
         intel: "09c7d10bd193b9617261e80884bc85ff7529cd1aba7e7feb5ae918d6e8271223"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
