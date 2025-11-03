cask "fellou" do
  arch arm: "arm64", intel: "x64"

  version "2.5.16"
  sha256 arm:   "879e31bccc618d967f632ccad21cb66bed18c23ed2d311486468c272a025b0d4",
         intel: "8296cb4f1a8699a2456224b1955e628c5ba19c510ae7993876770af350f00f30"

  url "https://fellou.s3.us-west-1.amazonaws.com/FellouPC/Fellou-CE-1.0.16-#{version}-2025-10-31-1859-#{arch}.dmg",
      verified: "fellou.s3.us-west-1.amazonaws.com/FellouPC/"
  name "Fellou"
  desc "AI-native meeting co-pilot"
  homepage "https://fellou.ai/"

  livecheck do
    url "https://fellou.ai/api/download"
    strategy :json do |json|
      json.dig("list", 0, "resource")&.map { |r| r["version"] }
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
