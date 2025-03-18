cask "abstract" do
  version "98.5.0"
  sha256 "a6edc96350207e36e227bb8f6d8c0a32710d0e3feb8ba171c27b4106b0392b66"

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
  depends_on macos: ">= :catalina"

  app "Abstract.app"

  zap trash: [
    "~/Library/Application Support/Abstract",
    "~/Library/Caches/com.elasticprojects.abstract-desktop",
    "~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.plist",
    "~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
