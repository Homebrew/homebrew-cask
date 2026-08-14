cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "4dea2229bc8c382398f88f0360971ece9112452e5151fdb8784ea746d4c2e294",
         intel: "ff9fbaf21fd32a968639e6a4bea781f4ca9550bb17b0bc33bf6aa11f486739a1"

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
