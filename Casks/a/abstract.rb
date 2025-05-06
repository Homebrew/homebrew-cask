cask "abstract" do
  version "98.6.1"
  sha256 "227ed1f8ac93ec8f6a3dfcf5c7d076a728df105ab5ac5a0ed50fb5152134b4f1"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.zip",
      verified: "downloads.goabstract.com/"
  name "Abstract"
  desc "Collaborative design tool with support for Sketch files"
  homepage "https://www.abstract.com/"

  livecheck do
    url "https://api.goabstract.com/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
