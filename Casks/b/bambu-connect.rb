cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0-beta.6"
  sha256 arm:   "b5f1bf2099b2274150ec013a01f9267978fcb68f941d41ee134b78c430abf7d2",
         intel: "8b441638f5c351447c81c7d893507aa937d2b413e0922408898d8b6d7855f454"

  url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/versions/#{version}/bambu-connect-v#{version}-darwin-#{arch}.dmg",
      verified: "public-cdn.bblmw.com/upgrade/bambu-connect/updates/versions/"
  name "Bambu Connect"
  desc "Tool for linking with Bambu Lab 3D printers"
  homepage "https://wiki.bambulab.com/en/software/bambu-connect"

  livecheck do
    url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/beta-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Bambu Connect.app"

  zap trash: [
    "~/Library/Application Support/Bambu Connect",
    "~/Library/Preferences/com.bambulab.bambu-connect.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-connect.savedState",
  ]
end
