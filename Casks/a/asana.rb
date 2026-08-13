cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "ada5626bcf7e657da850a19f9c07bd616f1c51d464d4bf0e6eaa7886aa1c4afb",
         intel: "8b17b75b4ddeaebc6e6ac9558a6a157c9a9a20d033bfa0017da769cad8a26d36"

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
