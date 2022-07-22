cask "abstract" do
  version "98.1.11"
  sha256 "977fe46d8abf649eef3c6d48d8d268c781a3e2931c8eae96e7c0d3381ebb71ba"

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
