cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "22e538ccadf854b80438476c453eee28e6ada1600473183f7a21aed2564247fb",
         intel: "396f28ef554dd0c230c00fad75fd2b6cea83f6829579d948bdd14304f39e3ecd"

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
