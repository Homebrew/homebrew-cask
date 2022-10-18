cask "gdevelop" do
  version "5.1.147"
  sha256 "76e08659eb5673ddba1ba8491f94f8d5ea720c4d9343f10a6e5ee711fe221399"

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
