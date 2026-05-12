cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "2bfc8c94634798c854134a761a43d974c8aa13b8d301559417b144bacbc45c4c",
         intel: "4b192b80151d9ca6f88d1919c441c24e8d37c244d3eec54fc1a34c6d7d9c5bd0"

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
