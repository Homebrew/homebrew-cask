cask "macloggerdx" do
  version "6.47"
  sha256 "c194b4d5674a5730fbb84f7bd054b29bbce9e3f01798ec57f776ed0643a7b7cc"

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
