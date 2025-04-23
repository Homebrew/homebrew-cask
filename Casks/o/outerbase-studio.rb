cask "outerbase-studio" do
  version "0.1.27"
  sha256 "acd1362aa75deb4039fddc69ed4dd685692bf37502f008ac6864c40388b2d4b1"

  url "https://github.com/outerbase/studio-desktop/releases/download/v#{version}/outerbase-mac-#{version}.dmg"
  name "Outerbase Studio Desktop"
  desc "Database GUI"
  homepage "https://github.com/outerbase/studio-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Outerbase Studio.app"

  zap trash: [
    "~/Library/Application Support/outerbase-studio-desktop",
    "~/Library/Logs/outerbase-studio-desktop",
    "~/Library/Preferences/com.outerbase.studio.plist",
  ]
end
