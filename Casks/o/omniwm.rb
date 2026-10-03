cask "omniwm" do
  version "0.7.4"
  sha256 "1f1485e1d166831697e8cedb9c117577f5949fe00deeae8572bed6d6c58eb4e2"

  url "https://github.com/OmniNull/OmniWM/releases/download/v#{version}/OmniWM-v#{version}.zip"
  name "OmniWM"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OmniWM.app"
  binary "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl"

  zap trash: [
    "~/.config/omniwm",
    "~/.local/state/omniwm",
    "~/Library/Caches/com.barut.OmniWM",
    "~/Library/HTTPStorages/com.barut.OmniWM",
    "~/Library/Preferences/com.barut.OmniWM.plist",
  ]
end
