cask "abstract" do
  version "98.0.5"
  sha256 "aa8323746829fced4f0c1ca83df4ca479c6d1925545f0843bd0c9b6fa3539e22"

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
