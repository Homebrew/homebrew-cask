cask "guilded" do
  version "1.0.9224397"
  sha256 "063e238d0fe2d67d206fd910c8929ef7b862b2d96ffe8c3b5c714343d41ddff3"

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
