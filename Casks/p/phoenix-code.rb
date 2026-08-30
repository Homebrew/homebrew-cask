cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "5.2.5"
  sha256 arm:   "a1e49fc187df97e0e8e122ff1733439a1809ceda74cf643d70d9338b3475268d",
         intel: "ed2dfcb732f929d41a3dcc7fdcb2a280f110d285338dff1f8dd0a8f81d2d9515"

  url "https://github.com/phcode-dev/phoenix-desktop/releases/download/prod-app-v#{version}/Phoenix.Code_#{version}_#{arch}.dmg"
  name "Phoenix Code"
  desc "Code editor"
  homepage "https://phcode.io/"

  livecheck do
    url "https://updates.phcode.io/tauri/update-latest-stable-prod.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Phoenix Code.app"

  zap trash: [
        "~/Library/Application Support/io.phcode",
        "~/Library/Caches/io.phcode",
        "~/Library/Saved Application State/io.phcode.savedState",
        "~/Library/WebKit/io.phcode",
      ],
      rmdir: "~/Documents/Phoenix Code"
end
