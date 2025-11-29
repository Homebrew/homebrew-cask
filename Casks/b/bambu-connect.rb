cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1-beta.0"
  sha256 arm:   "7cccafaff45537cc32c406a0cb9f0c0894271b5ec5ebd0b4da20558e04fdece8",
         intel: "bfa14a32b42da2c81a5c09073153f7995a65c4b1c5b99c0f8e4b4a3cc61606c6"

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
