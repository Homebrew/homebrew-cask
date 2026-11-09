cask "atlas-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.4"
  sha256 arm:   "8d19c35f414e5f29a707efefcb602dd8b0258c653a09b2bff4c2e2d79f347bd6",
         intel: "896a2896a629611cae5502bc5db6017726545cf428fec6063b2f5549bdf95139"

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
