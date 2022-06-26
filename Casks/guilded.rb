cask "guilded" do
  version "1.0.9142283"
  sha256 "4a48a356cf7b2892d3848b8c799339f919d862bc9d9c88ab7a2a072a5535ce83"

  url "https://s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/Guilded-#{version}-release.dmg",
      verified: "s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/"
  name "Guilded"
  desc "Group chat platform"
  homepage "https://www.guilded.gg/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/www.guilded.gg/AppBuilds/mac/release-mac.yml"
    strategy :electron_builder do |data|
      data["version"].tr("-release", "")
    end
  end

  app "Guilded.app"

  zap trash: [
    "~/Library/Application Support/Guilded",
    "~/Library/Logs/Guilded",
    "~/Library/Preferences/com.electron.guilded.plist",
    "~/Library/Saved Application State/com.electron.guilded.savedState",
  ]
end
