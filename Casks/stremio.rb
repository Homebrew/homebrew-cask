cask "stremio" do
  version "4.4.160"
  sha256 "8ef33a44bb7b29c6000d1d878c69966e22d029f71a806526c36b90177c350c10"

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
