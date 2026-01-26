cask "removebg" do
  version "2.4.1"
  sha256 "dab0c5105d9980dbd5406890bc3f8bcf3065340a59be2404a217e5a1c9d40fbf"

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
