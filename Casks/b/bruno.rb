cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.13.1"
  sha256 arm:   "f40b261725f8e471dcd45331b85af05fe935593804a011c62285f5eaa119ca99",
         intel: "58072ea632b5167f67b26f99ae08824b1cffcff83aac424952267a1bc8c53f92"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
