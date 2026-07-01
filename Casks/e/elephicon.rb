cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "0da60c645056f37a56ae9ca43ed388015017ea9f6b7264e037e907029e9a2bf1",
         intel: "aecbc61f0102f47174af536d4624708c2321337f8286f17cfcfacc0f685933c3"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: :monterey

  app "Elephicon.app"

  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Logs/Elephicon",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
