cask "tabularis" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "575c04dc16a33ad2207dfad9f69df810c9b3bd299adb70f06489a7b2f4f65312",
         intel: "6273482cfcd4e77cde2294dbea5e79c8cba490d818e5a87b086da2c087991a86"

  url "https://github.com/TabularisDB/tabularis/releases/download/v#{version}/tabularis_#{version}_#{arch}.dmg"
  name "Tabularis"
  desc "Lightweight database management tool"
  homepage "https://github.com/TabularisDB/tabularis"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "tabularis.app"

  zap trash: [
    "~/Library/Application Support/tabularis",
    "~/Library/Caches/tabularis",
    "~/Library/Logs/tabularis",
    "~/Library/Preferences/com.debba.tabularis.plist",
    "~/Library/Saved Application State/com.debba.tabularis.savedState",
  ]
end
