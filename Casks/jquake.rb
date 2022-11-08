cask "jquake" do
  arch arm: "arm64", intel: "intel"

  version "1.8.2"
  sha256 arm:   "366f855034508c7aab6d7f95acb27eb08fbe57c1839913cb7099d39f50a7e3c6",
         intel: "a36be6dddd8cc4ffa9154bdd6a2ef2d964d0edeec80ca90f0e093e3c0ca18498"

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
