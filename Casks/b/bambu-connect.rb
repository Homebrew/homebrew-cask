cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0-beta.10"
  sha256 arm:   "8d8124c4c0cf4434f54a6b70a803e95fe941bb3fd5211c86293545a97ab1ef72",
         intel: "00bd0f54aba664b35f6d1bf9d7163cf65d91bd88fb48f067183643f60a20b8a3"

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
