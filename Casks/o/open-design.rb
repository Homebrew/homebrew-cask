cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "bf012a963f2b57c2da420b01544e9b79b8820b07b0c06963510736233f7dfa63",
         intel: "bcf09a0c2bc6b661b6e93674f8e23958b9da5dd49ae6a3710cd2271b5b388b99"

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
