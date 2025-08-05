cask "openmw" do
  arch arm: "arm64", intel: "amd64"

  version "0.49.0"
  sha256 arm:   "7fb223cebd53d2dbbae57dcd5a0d71ffcfd45281ae58da3a74e4f21d3b3d1454",
         intel: "46ec036e40bcc6dbdd0c3bd1fefc9ed096e6cd2f68d1622c160d2fe79f63bd67"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}-macos-#{arch}.dmg",
      verified: "github.com/OpenMW/openmw/"
  name "OpenMW"
  desc "Open-source open-world RPG game engine that supports playing Morrowind"
  homepage "https://openmw.org/"

  livecheck do
    url :url
    regex(/openmw[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "OpenMW.app"
  app "OpenMW-CS.app"

  zap trash: [
    "~/Library/Application Support/openmw",
    "~/Library/Preferences/openmw",
    "~/Library/Preferences/org.openmw.openmw.plist",
    "~/Library/Saved Application State/org.openmw.*.savedState",
  ]
end
