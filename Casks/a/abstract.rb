cask "abstract" do
  version "98.6.3"
  sha256 "9bccf9b6a748039f69bb28f7aec453dc236035caf9cfba131fba92aeeaaca060"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.zip"
  name "Abstract"
  desc "Collaborative design tool with support for Sketch files"
  homepage "https://www.goabstract.com/"

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
