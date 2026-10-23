cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.26.1"
  sha256 arm:   "9441202e1436ff65aac03a145bb5df6eea464d0f1d8e65167ebe404586b6d0bf",
         intel: "f3c78b44131d295fe8244afd20640e097d16abff2945c1e00be2f9c0c5502766"

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
