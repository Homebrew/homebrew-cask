cask "stremio@beta" do
  arch arm: "arm64", intel: "x64"

  version "5.1.23"
  sha256 arm:   "bdd97725c8577a0025750d95094d39cc2fac371d9e143686c125377a6078ad71",
         intel: "1c3e6f1174649bcde0abf84a116559ba0f1323a2e53a1ec0375f2d9ada34428a"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://dl.strem.io/stremio-shell-macos/v#{version}/Stremio_#{arch}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.stremio.com/updater/check?product=stremio-shell-macos&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "stremio"
  depends_on :macos

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/Smart Code ltd",
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/com.stremio.stremio-shell-macos",
    "~/Library/Caches/com.westbridge.stremio*-mac",
    "~/Library/Caches/Smart Code ltd",
    "~/Library/Preferences/com.smartcodeltd.stremio.plist",
    "~/Library/Preferences/com.stremio.Stremio.plist",
    "~/Library/Preferences/com.westbridge.stremio*-mac.plist",
    "~/Library/Saved Application State/com.smartcodeltd.stremio.savedState",
    "~/Library/WebKit/com.stremio.stremio-shell-macos",
    "~/Library/WebKit/com.westbridge.stremio*-mac",
  ]
end
