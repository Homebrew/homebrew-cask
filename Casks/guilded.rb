cask "guilded" do
  version "1.0.9188326"
  sha256 "ec63c752408ee51081cf25c7a090b6ccc7d81b695aa25276f8535f987412fccb"

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
