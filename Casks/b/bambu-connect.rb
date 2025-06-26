cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0-beta.7"
  sha256 arm:   "45290f374ff28729d2deb4c3e379266d553fb9005f178c9b4e940c813076e718",
         intel: "7a4af9bd5570777fd8eb23c1dfd34c54857a8c50aa76a3b172bb8625df70b02d"

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
