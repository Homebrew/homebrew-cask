cask "atlas-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "dc0ce94cd8f6fa0443d08d3265f9984005010ab4924d2e80fddd4c2867ef6501",
         intel: "c8066ae39443fe70897e9eb35a6aeefb0cd3246e9cec8e60e9b8fc48469a628a"

  url "https://github.com/pacifio/atlas/releases/download/alpha-#{version}/Atlas_#{version}_#{arch}.dmg"
  name "Atlas"
  desc "Source control for coding agents"
  homepage "https://github.com/pacifio/atlas"

  livecheck do
    url :url
    regex(/^alpha[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Atlas.app"

  zap trash: [
    "~/.atlas",
    "~/Library/Application Support/dev.atlas.ide",
    "~/Library/Caches/dev.atlas.ide",
    "~/Library/HTTPStorages/dev.atlas.ide",
    "~/Library/Preferences/dev.atlas.ide.plist",
    "~/Library/Saved Application State/dev.atlas.ide.savedState",
    "~/Library/WebKit/dev.atlas.ide",
  ]
end
