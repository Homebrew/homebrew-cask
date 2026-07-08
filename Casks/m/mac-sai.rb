cask "mac-sai" do
  version "1.15.2"
  sha256 "04fd78eac0372e046c5febc662298e954ef1e29b99b1e01c32c7d5b3dd43069f"

  url "https://github.com/iliyami/MacSai/releases/download/v#{version}/MacSai-#{version}.dmg"
  name "Mac Sai"
  desc "System cleaner, optimiser, and malware scanner"
  homepage "https://github.com/iliyami/MacSai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mac Sai.app"

  zap trash: [
    "~/Library/Application Support/MacClean",
    "~/Library/Caches/com.macclean.app",
    "~/Library/Logs/MacClean",
    "~/Library/Preferences/com.macclean.app.plist",
    "~/Library/Saved Application State/com.macclean.app.savedState",
  ]
end
