cask "jquake" do
  arch arm: "arm64", intel: "intel"

  version "1.8.4"
  sha256 arm:   "38b108312abdb7bda6afcfdfcc2fee554d892cc753f53321fd6a3feafd80bd9a",
         intel: "6e357ba4ce46e35e628118fbaa530d26e1bb8a8a0f1a19aa160a788facaeeed4"

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
