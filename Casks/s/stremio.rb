cask "stremio" do
  version "4.4.165"
  sha256 "62aae0a471566e432c41f02ae346f44d49fe87bae158a22395f41427cb9e4f51"

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
