cask "nicotine-plus" do
  version "3.2.9"
  sha256 "9e44c0cb3b9987fbd2dd4037441eeef934978f763f9fb2ce637977e853da1bd2"

  url "https://github.com/nicotine-plus/nicotine-plus/releases/download/#{version}/macos-installer.zip",
      verified: "github.com/nicotine-plus/nicotine-plus/"
  name "Nicotine+"
  desc "Nicotine+ is a graphical client for the Soulseek peer-to-peer network"
  homepage "https://nicotine-plus.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with formula: "nicotine-plus"
  depends_on macos: ">= :catalina"

  app "Nicotine+.app"

  zap trash: [
    "~/.config/nicotine/",
    "~/.local/share/nicotine/",
    "~/Library/Preferences/org.nicotine_plus.Nicotine.plist",
    "~/Library/Saved Application State/org.nicotine_plus.Nicotine.savedState/",
  ]
end
