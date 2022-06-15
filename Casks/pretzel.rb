cask "pretzel" do
  version "2.11.3"
  sha256 "c1f57bcd999fdd4021c2e9ca3d25b83f98137f2eaa713ed53f6a3c933474b2cb"

  url "https://download.pretzel.rocks/Pretzel-#{version}-universal-mac.zip"
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
