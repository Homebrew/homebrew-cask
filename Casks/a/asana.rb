cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "d6f6af330797de2a2a1215d201fd78c6e5fa98c14e6899d55b12f1cd92992c2d",
         intel: "a7e46c5465c1e3ab5fd7030c5e08a184810ffc2ee6353b0422b5ede13f3147d0"

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
