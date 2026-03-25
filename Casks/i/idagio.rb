cask "idagio" do
  version "1.15.0"
  sha256 "f5b8d8985c3f93765a96c1f85bdab54c84113cc3da22ee9e2b286b31d52115e2"

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name "IDAGIO"
  desc "Classical music streaming app"
  homepage "https://www.idagio.com/"

  livecheck do
    url "https://dl.idagio.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "IDAGIO.app"

  zap trash: [
    "~/Library/Application Support/IDAGIO",
    "~/Library/Logs/IDAGIO",
    "~/Library/Preferences/com.idagio.desktop.plist",
    "~/Library/Saved Application State/com.idagio.desktop.savedState",
  ]
end
