cask "abstract" do
  version "98.6.0"
  sha256 "d010debd6cd30872f678d6710f5db964964cd3725c0406263497ede8a4de3df0"

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
