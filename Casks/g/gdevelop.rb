cask "gdevelop" do
  version "5.6.273"
  sha256 "f3aa271bb6a96278db5e2719073ca6dcce2de09116ab70c3cd39f6febc4b68fa"

  url "https://github.com/4ian/GDevelop/releases/download/v#{version}/GDevelop-#{version.major}-#{version}-universal.dmg",
      verified: "github.com/4ian/GDevelop/"
  name "GDevelop"
  desc "Open-source, cross-platform game engine designed to be used by everyone"
  homepage "https://gdevelop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "GDevelop #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/GDevelop #{version.major}",
    "~/Library/Logs/GDevelop #{version.major}",
    "~/Library/Preferences/com.gdevelop-app.ide.plist",
    "~/Library/Saved Application State/com.gdevelop-app.ide.savedState",
  ]
end
