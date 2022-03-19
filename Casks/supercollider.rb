cask "supercollider" do
  version "3.12.2"
  sha256 "57728f2e2a86ccd64ab1c0688f75c41797adf892db1d63f9f29d753f78378448"

  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.dmg",
      verified: "github.com/supercollider/supercollider/"
  name "SuperCollider"
  desc "Server, language, and IDE for sound synthesis and algorithmic composition"
  homepage "https://supercollider.github.io/"

  livecheck do
    url :url
    regex(/^Version[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "SuperCollider.app"

  zap trash: [
    "~/Library/Application Support/SuperCollider",
    "~/Library/Preferences/net.sourceforge.supercollider.plist",
    "~/Library/Saved Application State/net.sourceforge.supercollider.savedState",
  ]
end
