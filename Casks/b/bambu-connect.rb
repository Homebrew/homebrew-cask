cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0-beta.12"
  sha256 arm:   "067cfef8624e937007839d84375758fe8d2db6dce5ebd5e61ccaa149979b2c7d",
         intel: "2423e89bbfdb1e1eb82b379cca23f5d01f01164fc2d5c54c646f5bdf4fb756e9"

  url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/versions/#{version}/bambu-connect-v#{version}-darwin-#{arch}.dmg",
      verified: "public-cdn.bblmw.com/upgrade/bambu-connect/updates/versions/"
  name "Bambu Connect"
  desc "Tool for linking with Bambu Lab 3D printers"
  homepage "https://wiki.bambulab.com/en/software/bambu-connect"

  livecheck do
    url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/beta-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Bambu Connect.app"

  zap trash: [
    "~/Library/Application Support/Bambu Connect",
    "~/Library/Preferences/com.bambulab.bambu-connect.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-connect.savedState",
  ]
end
