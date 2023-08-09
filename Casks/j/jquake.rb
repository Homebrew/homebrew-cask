cask "jquake" do
  arch arm: "arm64", intel: "intel"

  version "1.8.5"
  sha256 arm:   "e035c0b51ab1947719a20d54493ffea103e4e2d3c1dbf73d2de145cfe8f3223e",
         intel: "d503a113791ea5f731bcb0de4c57d3e4544982263296a3c14b99c21e5105db9f"

  url "https://fleneindre.github.io/downloads/JQuake_#{version}_mac_#{arch}.dmg",
      verified: "fleneindre.github.io/downloads/"
  name "JQuake"
  desc "Real-time earthquake monitoring software for Japan"
  homepage "https://jquake.net/"

  livecheck do
    url "https://fleneindre.github.io/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "JQuake.app"

  zap trash: [
    "~/Library/Application Support/JQuake",
    "~/Library/Saved Application State/net.jquake.java.savedState",
  ]
end
