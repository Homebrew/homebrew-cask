cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.10.0"

  if Hardware::CPU.intel?
    sha256 "a7e212ee6e99cb6e39c5b4f2c0309a19de03525930dc28574fc3f0b7094cb90f"
  else
    sha256 "95e5376f62000ec99c48dc599abadaafbdf7969a8498084f49013eb53262ec63"
  end

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/"
    strategy :page_match do |page|
      stable_versions = JSON.parse(page).filter { |v| v["channel"] == "stable" && v["disabled"] == false }
      stable_versions.map { |v| v["name"] }
    end
  end

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Application Support/Postman",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/Postman",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
