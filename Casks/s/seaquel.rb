cask "seaquel" do
  arch arm: "aarch64", intel: "x64"

  version "2026.9.2"
  sha256 arm:   "ef7c08a62b4237408f51cab1588708a7348036f6514a4337c70f74d38aa80696",
         intel: "78806282e740cd41c159ec6065652ceb0b7e6e7322a72b08f141d208f30a4f10"

  url "https://github.com/webstonehq/seaquel/releases/download/v#{version}/Seaquel_#{version}_#{arch}.dmg"
  name "Seaquel"
  desc "Database client for exploring, querying and visualising data"
  homepage "https://seaquel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Seaquel.app"

  zap trash: [
    "~/Library/Application Support/app.seaquel.desktop",
    "~/Library/Caches/seaquel",
    "~/Library/Logs/app.seaquel.desktop",
    "~/Library/Preferences/seaquel.plist",
    "~/Library/WebKit/seaquel",
  ]
end
