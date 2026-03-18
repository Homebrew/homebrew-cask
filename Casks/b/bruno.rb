cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "246470d4d569380c2b58e58d59522b4e7f425ba009190d6975e8795dcdea116e",
         intel: "72918531c59daa591323acfd36a5e0d62cd4ae084acfdcfd2bbb9c05c8108a26"

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
