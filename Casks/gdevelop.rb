cask "gdevelop" do
  version "5.1.164"
  sha256 "b077bc7fbd5981bf74925efb548d3e8805e98d2d076977cc9aa792b8f5ccdb8f"

  url "https://github.com/4ian/GDevelop/releases/download/v#{version}/GDevelop-#{version.major}-#{version}.dmg",
      verified: "github.com/4ian/GDevelop/"
  name "GDevelop"
  desc "Open-source, cross-platform game engine designed to be used by everyone"
  homepage "https://gdevelop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GDevelop #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/GDevelop #{version.major}",
    "~/Library/Logs/GDevelop #{version.major}",
    "~/Library/Preferences/com.gdevelop-app.ide.plist",
    "~/Library/Saved Application State/com.gdevelop-app.ide.savedState",
  ]
end
