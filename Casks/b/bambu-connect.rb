cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0-beta.1"
  sha256 arm:   "fa9387817ea36be340d6258ca9f1e06af0fbb15ba0ff1ff027fcc7b7d305154a",
         intel: "21bc467bf6af678f8d5c2f22d27d97d1053b17164f762ea056c62366665d60a1"

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
