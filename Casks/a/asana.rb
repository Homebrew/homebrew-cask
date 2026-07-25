cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "86fa23a4b4530fdbd8bd514beff1402fb0346dec946625708d891137c88eeae4",
         intel: "dcb055f00eb5a607f065ab9cb54f975b08917dd52de3bf9fabc4ea6f2df7efcb"

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
