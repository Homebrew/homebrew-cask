cask "stremio@beta" do
  arch arm: "arm64", intel: "x64"

  version "5.1.25"
  sha256 arm:   "2d54bf9e61c23c40ecaf83fa81f9fab6c82cdf5c0268439197f041c28af3c01a",
         intel: "e18d5d27c0218520fbc6dfa05c56c3175cd058b54da109a1b720ec4cb92b8357"

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
