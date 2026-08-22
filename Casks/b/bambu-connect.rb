cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0-beta.15"
  sha256 arm:   "3f3398d1fc3f087f0317e82cf788b741b7ac83c9461a7ac3755d011a1f1890b6",
         intel: "ec3fca35f3d655451cb44b6ca5a7429fbabd9ff6df7cf30ac2b8aa070f1eaa33"

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
