cask "stremio" do
  arch arm: "arm64", intel: "x64"

  version "5.1.19"
  sha256 arm:   "846acf1fe7a05abf442a2258b63bd11ce378371fe3fe1939dff6c5a4fe3da29b",
         intel: "4bbe942716aed5447619f6144a792bd514ee4b1ab60035d79f042badaf91ad85"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://dl.strem.io/stremio-shell-macos/v#{version}/Stremio_#{arch}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.stremio.com/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Stremio[._-]#{arch}\.dmg}i)
  end

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/Smart Code ltd",
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/Smart Code ltd",
    "~/Library/Preferences/com.smartcodeltd.stremio.plist",
    "~/Library/Preferences/com.stremio.Stremio.plist",
    "~/Library/Saved Application State/com.smartcodeltd.stremio.savedState",
  ]
end
