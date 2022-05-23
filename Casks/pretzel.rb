cask "pretzel" do
  version "2.11.1"
  sha256 "898a5f0129d40cdbf578fd29772766251bc4dcef63214b3038174ce0902f9239"

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
