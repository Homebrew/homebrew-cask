cask "gdevelop" do
  version "5.6.284"
  sha256 "fea86f0f56eb32da43c0398c259e4d9162352bdaed7385337a82a1ad27d427f3"

  url "https://github.com/4ian/GDevelop/releases/download/v#{version}/GDevelop-#{version.major}-#{version}-universal.dmg"
  name "GDevelop"
  desc "Open-source, cross-platform game engine designed to be used by everyone"
  homepage "https://gdevelop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "GDevelop #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gdevelop-app.ide.sfl*",
    "~/Library/Application Support/GDevelop #{version.major}",
    "~/Library/Logs/GDevelop #{version.major}",
    "~/Library/Preferences/com.gdevelop-app.ide.plist",
    "~/Library/Saved Application State/com.gdevelop-app.ide.savedState",
  ]
end
