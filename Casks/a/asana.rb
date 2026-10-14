cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.10.2"
  sha256 arm:   "dfe261883980651c90f7ad350af93039fa30d87f75eda8553fc0a687913d5338",
         intel: "4cb062beb372f089ad8adfd5a0dd629e1896b02f8191dbc7d1447979b6f484ec"

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
  depends_on macos: :monterey

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
