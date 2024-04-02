cask "stremio" do
  version "4.4.168"
  sha256 "4f140302a2c283a15a4740bfa4d983b6cc373e9375336dd69de274ae4b18c1ce"

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
