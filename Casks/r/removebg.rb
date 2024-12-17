cask "removebg" do
  version "2.2.4"
  sha256 "6290d2b4ed24c528b5cd4c11b18cfd28b8e1b977c815b041efd976f1320a4d7b"

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
