cask "fellou" do
  version "2.5.16"
  sha256 :no_check

  arch arm: "arm64", intel: "x64"

  url "https://fellou.s3.us-west-1.amazonaws.com/FellouPC/Fellou-CE-1.0.16-#{version}-2025-10-31-1859-#{arch}.dmg",
      verified: "fellou.s3.us-west-1.amazonaws.com/FellouPC/"

  name "Fellou"
  desc "AI-native meeting co-pilot"
  homepage "https://fellou.ai/"

  livecheck do
    url "https://fellou.ai/api/download"
    strategy :json do |json|
      json["list"].first["resource"].first["version"]
    end
  end

  app "Fellou.app"

  zap trash: [
    "~/Library/Application Support/Fellou",
    "~/Library/Caches/com.fellou.ai",
    "~/Library/Caches/com.fellou.ai.ShipIt",
    "~/Library/Caches/fellou-updater",
    "~/Library/HTTPStorages/com.fellou.ai",
    "~/Library/Preferences/com.fellou.ai.plist",
  ]
end
