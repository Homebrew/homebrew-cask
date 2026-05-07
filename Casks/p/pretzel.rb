cask "pretzel" do
  version "2.13.2"
  sha256 "f35963bb89adecd05fc2e72f7bc5532f518877b695895567a3df72a6491003a6"

  url "https://download.pretzel.rocks/Pretzel-#{version}-universal-mac.zip"
  name "Pretzel"
  desc "DMCA-safe music for creators"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Pretzel.app"

  zap trash: [
    "~/Library/Application Support/@pretzel-aux",
    "~/Library/Logs/Pretzel",
    "~/Library/Preferences/rocks.pretzel.plist",
    "~/Library/Saved Application State/rocks.pretzel.savedState",
  ]
end
