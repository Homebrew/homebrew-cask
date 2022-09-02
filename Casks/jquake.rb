cask "jquake" do
  arch arm: "arm64", intel: "intel"

  version "1.8.1"
  sha256 arm:   "52a044d7110794cfec518444ad550b56a0328786e0af09629f319c52e3088c31",
         intel: "d981c632467d4cddcff386643557e86972d6d577d38eaaee9b2f219037614ab6"

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
