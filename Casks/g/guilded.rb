cask "guilded" do
  version "1.0.9328265"
  sha256 "3cdcfb80de095cf8239aee83c00600ffb48a3d110534ce879b1532c153c309cb"

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

  auto_updates true

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
