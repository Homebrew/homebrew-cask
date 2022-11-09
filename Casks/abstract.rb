cask "abstract" do
  version "98.2.4"
  sha256 "d9e55cd26f6b8a6cbfe7218917675d8b7fd6555fd7f2ac9b699807ddac5f9df5"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.zip"
  name "Abstract"
  desc "Collaborative design tool with support for Sketch files"
  homepage "https://www.goabstract.com/"

  livecheck do
    url "https://api.goabstract.com/releases/latest/download"
    strategy :header_match
  end

  auto_updates true

  app "Abstract.app"

  zap trash: [
    "~/Library/Application Support/Abstract",
    "~/Library/Caches/com.elasticprojects.abstract-desktop",
    "~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.plist",
    "~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState",
  ]
end
