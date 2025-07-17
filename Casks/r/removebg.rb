cask "removebg" do
  version "2.3.0"
  sha256 "5b7295a409697ab8bfe7a7770db4b11cc4851abe6e9fe3f7b200dbc3aef9ebce"

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
