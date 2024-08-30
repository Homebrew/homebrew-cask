cask "abstract" do
  version "98.4.1"
  sha256 "4b0b39d9b7870ab2bfc70357c3dd391f6eea75e599e25b9166673e334141ca29"

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
  depends_on macos: ">= :high_sierra"

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
