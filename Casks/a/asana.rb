cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "b7d49fb1100c95d7bbde6f2fa0423b4dc523d440a151786fda7f49748caa373a",
         intel: "5ed2c09ee5a8bb0672c17fd779826819fb08ecf1f225b964946737942809abd1"

  url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/v#{version}/Asana-darwin-#{arch}-#{version}.zip"
  name "Asana"
  desc "Manage team projects and tasks"
  homepage "https://asana.com/"

  livecheck do
    url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
