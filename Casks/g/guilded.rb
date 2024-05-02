cask "guilded" do
  version "1.0.9256462"
  sha256 "5d5312ab5eac9106d329689dfbdea81593ee0e999c689929629efa8d415fc546"

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
