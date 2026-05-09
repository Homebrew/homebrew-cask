cask "stremio" do
  arch arm: "arm64", intel: "x64"

  version "5.1.22"
  sha256 arm:   "5e7f812af4902455a5c780b2ea08ef0387bda95889fb1f3a177ca12be1a216e6",
         intel: "077dd1d816d64bfee806c9facef5a72effcd686a09d7590ba3cfe51de8d5ab79"

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

  auto_updates true

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/com.stremio.stremio-shell-macos",
    "~/Library/Caches/com.westbridge.stremio5-mac",
    "~/Library/Preferences/com.westbridge.stremio5-mac.plist",
    "~/Library/WebKit/com.stremio.stremio-shell-macos",
    "~/Library/WebKit/com.westbridge.stremio5-mac",
  ]
end
