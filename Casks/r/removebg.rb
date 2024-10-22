cask "removebg" do
  version "2.2.3"
  sha256 "874c5b99abfc172fccb79889debd7a71fa6e9f915ecfec1659957a47bcbb90e9"

  url "https://storage.googleapis.com/removebg-static/desktop/release/darwin/x64/remove.bg-darwin-x64-#{version}.zip",
      verified: "storage.googleapis.com/removebg-static/"
  name "remove.bg"
  desc "Automatic bulk background removal"
  homepage "https://www.remove.bg/"

  livecheck do
    url "https://storage.googleapis.com/removebg-static/desktop/release/darwin/x64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on macos: ">= :catalina"

  app "remove.bg.app"

  zap trash: [
    "~/Library/Application Support/remove.bg-desktop",
    "~/Library/Logs/remove.bg",
    "~/Library/Preferences/bg.remove.mac.new.plist",
    "~/Library/Saved Application State/bg.remove.mac.new.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
