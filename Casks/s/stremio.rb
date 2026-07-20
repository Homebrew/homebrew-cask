cask "stremio" do
  arch arm: "arm64", intel: "x64"

  version "5.1.24"
  sha256 arm:   "6bf4cfdab52c373f2610636c10ec19059c1e1659764ce2d3c2a07e1f3cdce483",
         intel: "601fcaa883465cec9bc34d5b73631b8f44100fafd30fdca9105d4f817b5390af"

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
    url "https://www.stremio.com/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Stremio[._-]#{arch}\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "stremio@beta"
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
