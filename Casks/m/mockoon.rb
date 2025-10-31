cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.4.0"
  sha256 arm:   "a64d822c133487819ea3d5e27dbf280cba474608f007413914b9579448000e96",
         intel: "29fbcfb7c1ffbc1cc90d909c00641d1e897b96afb43ecd77cd411042f8212537"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url "https://api.mockoon.com/releases/desktop/stable.json"
    strategy :json do |json|
      json["tag"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
