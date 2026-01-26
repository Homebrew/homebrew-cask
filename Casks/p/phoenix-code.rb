cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "b1799834c930a32c9a8ee748217a6cf1c7c9b792f744a7966823e995595f8aa3",
         intel: "cb873561b27d6e9f7f63d790bb0255a409467e52a13f70a7806cb5a6dc511e08"

  url "https://github.com/phcode-dev/phoenix-desktop/releases/download/prod-app-v#{version}/Phoenix.Code_#{version}_#{arch}.dmg",
      verified: "github.com/phcode-dev/phoenix-desktop/"
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

  app "Phoenix Code.app"

  zap trash: [
        "~/Library/Application Support/io.phcode",
        "~/Library/Caches/io.phcode",
        "~/Library/Saved Application State/io.phcode.savedState",
        "~/Library/WebKit/io.phcode",
      ],
      rmdir: "~/Documents/Phoenix Code"
end
