cask "guilded" do
  version "1.0.9161723"
  sha256 "3ecb8a7f9684a754474d525fc2b7088d2085af7f1a10f35f6c638a1a3aea989c"

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
