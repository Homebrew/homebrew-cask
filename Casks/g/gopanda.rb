cask "gopanda" do
  version "2.8.0"
  sha256 :no_check

  url "https://pandanet-igs.com/gopanda#{version.major}/download/GoPanda#{version.major}.dmg"
  name "GoPanda"
  desc "Pandanet client"
  homepage "https://pandanet-igs.com/communities/gopanda2"

  livecheck do
    url "https://pandanet-igs.com/gopanda#{version.major}/download/latest-mac.yml"
    strategy :electron_builder
  end

  app "GoPanda#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/GoPanda#{version.major}",
    "~/Library/Logs/GoPanda#{version.major}",
    "~/Library/Preferences/pandanet.gopanda.plist",
    "~/Library/Saved Application State/pandanet.gopanda.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
