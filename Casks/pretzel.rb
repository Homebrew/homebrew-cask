cask "pretzel" do
  version "2.11.2"
  sha256 "60b326448ad7dc3940e55a6448ee6af223607a319a49279c31ef62a274a33224"

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
