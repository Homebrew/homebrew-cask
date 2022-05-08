cask "pretzel" do
  version "2.11.0"
  sha256 "42ac5387eb82a5e318b3d73b6afc5279b4e77bde16159503ddad3dfd3fe6622e"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  name "Pretzel"
  desc "DMCA-safe music for creators"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pretzel.app"

  zap trash: [
    "~/Library/Application Support/@pretzel-aux",
    "~/Library/Logs/Pretzel",
    "~/Library/Preferences/rocks.pretzel.plist",
    "~/Library/Saved Application State/rocks.pretzel.savedState",
  ]
end
