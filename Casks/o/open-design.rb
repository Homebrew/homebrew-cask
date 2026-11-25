cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "37324d70902bc53b7875d8743a33d85ca6c754295d7e95e32a3bfa746d692dbe",
         intel: "2d62a65e11c4880d5d3da02ea0fe88acce6d0dd05bd1e2f48c11b5c6207023db"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg"
  name "Open Design"
  desc "Local-first, agent-native design tool"
  homepage "https://open-design.ai/"

  livecheck do
    url :url
    regex(/open-design[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open Design.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.open-design.desktop.sfl*",
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end
