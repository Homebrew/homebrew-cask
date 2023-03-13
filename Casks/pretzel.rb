cask "pretzel" do
  version "2.11.9"
  sha256 "b82480f371e59ba88ec284daf39ee36b149346ed3c97ac975b617c8dd8be3993"

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
