cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "6ac8f43cc41991045bbcdc6580b969b889c13f2ccb41f46b006de1166a05f38a",
         intel: "9d72a6179ea93803c456361e2b17c03695377934f4d4046af4973e28f43e3f21"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg",
      verified: "github.com/nexu-io/open-design/"
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
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end
