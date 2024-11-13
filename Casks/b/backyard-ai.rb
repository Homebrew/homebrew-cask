cask "backyard-ai" do
  arch arm: "Arm64"

  version "0.32.0"
  sha256 :no_check

  url "https://update.backyard.ai/download/dmg#{arch}"
  name "Backyard AI"
  desc "Run AI models locally"
  homepage "https://backyard.ai/"

  livecheck do
    url "https://update.backyard.ai/update/darwin#{arch}/0.0.1?beta_updates=true"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Backyard AI.app"

  zap trash: [
    "~/Library/Preferences/com.ahoylabs.faraday.plist",
    "~/Library/Saved Application State/com.ahoylabs.faraday.savedState",
  ]
end
