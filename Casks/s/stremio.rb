cask "stremio" do
  version "4.4.164"
  sha256 "6c29c672e7d1f3181de3275f7c73898e203c121ccb85c8e229955bc80c905671"

  url "https://dl.strem.io/shell-osx/v#{version}/Stremio+#{version}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.strem.io/download?platform=mac&four=true"
    strategy :header_match
  end

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/Smart Code ltd/",
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/Smart Code ltd/",
    "~/Library/Preferences/com.smartcodeltd.stremio.plist",
    "~/Library/Preferences/com.stremio.Stremio.plist",
    "~/Library/Saved Application State/com.smartcodeltd.stremio.savedState",
  ]
end
