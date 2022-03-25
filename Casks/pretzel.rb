cask "pretzel" do
  version "2.10.4"
  sha256 "561dc138682d4b0ee13b0c7af6cb35b3d483d899a088dd004efea6b9fc824f7f"

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
