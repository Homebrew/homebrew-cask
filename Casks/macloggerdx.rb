cask "macloggerdx" do
  version "6.41"
  sha256 "228d76dffadf1f4654595fb37c38a1b6d21a36f8938db7daf55e085743e6844a"

  url "https://www.dogparksoftware.com/files/MacLoggerDX#{version.no_dots}.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+)[\s<]/im)
  end

  conflicts_with cask: "homebrew/cask-versions/macloggerdx-beta"
  depends_on macos: ">= :high_sierra"

  app "MacLoggerDX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MacLoggerDX Help*",
    "~/Library/Caches/com.dogparksoftware.MacLoggerDX",
    "~/Library/HTTPStorages/com.dogparksoftware.MacLoggerDX",
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
  ]
end
