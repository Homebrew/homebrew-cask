cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "f7a7856b27db7c5757dc37297eff82369191288df3adfce6b650ba2a558d0635",
         intel: "6ea0733bb923832514081d99e2d31984ac97c84036ebc2a4609d73fdf5f0589c"

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
