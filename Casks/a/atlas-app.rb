cask "atlas-app" do
  version "0.2.6"
  sha256 "6d03258d5f4caab7786ba358de5aed0bb9a094f4f3856cfe8e5c661179e3c70d"

  url "https://github.com/pacifio/atlas/releases/download/alpha-#{version}/Atlas_#{version}_aarch64.dmg"
  name "Atlas"
  desc "Source control for coding agents"
  homepage "https://github.com/pacifio/atlas"

  livecheck do
    url :url
    regex(/^alpha[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur
  depends_on arch: :arm64

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
