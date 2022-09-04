cask "macforge" do
  version "1.1.0"
  sha256 "5a28c4f43b9b9bb868e26e45096804a1b7ae604fbf3ae857bed63d495a43ec50"

  url "https://github.com/w0lfschild/app_updates/raw/master/MacForge1/MacForge.#{version}.zip",
      verified: "github.com/w0lfschild/app_updates"
  name "MacForge"
  desc "Plugin, App, and Theme store which includes plugin injection"
  homepage "https://www.macenhance.com/macforge"

  livecheck do
    url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/MacForge1/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "MacForge.app"
end
