cask "jquake" do
  arch arm: "arm64", intel: "intel"

  version "1.8.3"
  sha256 arm:   "250697fdce9c7837e4259fcde32b5ecd50075a672b4b9c8e47db2f6be9e9a884",
         intel: "cd9c9fbe4222d4489a67159da27cabfa38ddffe1eb5ddda406b69dd964d7398f"

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
