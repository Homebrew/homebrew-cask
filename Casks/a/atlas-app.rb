cask "atlas-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.1"
  sha256 arm:   "6f48f3860122dbb3eea83b214e2de6191225579e13e2d7ea54365f061b61b49e",
         intel: "1799fef27794f19891785bf1c2e108b8b4000c5b746217a23b0de9140a010bc8"

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
