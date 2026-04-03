cask "stremio" do
  arch arm: "arm64", intel: "x64"

  version "5.1.18"
  sha256 arm:   "48d677761e465168ea5950411bf122f6314ccaaf42f7544a2a1b0239e72472db",
         intel: "633d6e53986edf2f8ddc5a7670b5102b8a06e3d5b3f468fe2a2db6bd8088e2fb"

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
