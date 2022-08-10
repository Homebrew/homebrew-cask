cask "jquake" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "1.7.0"

  if Hardware::CPU.intel?
    sha256 "cdd83b6e34fdb1a34a8b5342788cc2a39654ae206bb4e920a03d38c9a014ec77"
  else
    sha256 "f6bd8be37f3e1647afd52479ba90bdcab1280d60675144cc802e1e90c9245318"
  end

  url "https://fleneindre.github.io/downloads/JQuake_#{version}_mac_#{arch}.dmg",
      verified: "fleneindre.github.io/downloads/"
  name "JQuake"
  desc "Real-time earthquake monitoring software for Japan"
  homepage "https://jquake.net/"

  livecheck do
    url "https://fleneindre.github.io/version.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "JQuake.app"

  zap trash: [
    "~/Library/Application Support/JQuake",
    "~/Library/Saved Application State/net.jquake.java.savedState",
  ]
end
