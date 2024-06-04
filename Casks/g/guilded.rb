cask "guilded" do
  version "1.0.9265619"
  sha256 "0ba52b2d0847fb417b29e65b6a99849a8cfc0a0dec924db939a5c3c18274f1be"

  url "https://www.guilded.gg/AppBuilds/mac/Guilded-#{version}-release.dmg"
  name "Guilded"
  desc "Group chat platform"
  homepage "https://www.guilded.gg/"

  livecheck do
    url "https://www.guilded.gg/AppBuilds/mac/release-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub(/[._-]release.*$/i, "")
    end
  end

  app "Guilded.app"

  zap trash: [
    "~/Library/Application Support/Guilded",
    "~/Library/Logs/Guilded",
    "~/Library/Preferences/com.electron.guilded.plist",
    "~/Library/Saved Application State/com.electron.guilded.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
