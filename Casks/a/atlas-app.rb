cask "atlas-app" do
  version "0.3.0"
  sha256 "c8877e5106953aa4432e5ef0a810ce8250d0eab9d82575cf82d11c3695ad7db6"

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
