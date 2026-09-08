cask "omniwm" do
  version "0.6.8"
  sha256 "0823963c8a5c3bde854f7fdd03cd8c25c4421a40bd6f74844f2c8f7c16a26765"

  url "https://github.com/BarutSRB/OmniWM/releases/download/v#{version}/OmniWM-v#{version}.zip"
  name "OmniWM"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  depends_on macos: :tahoe
  depends_on arch: :arm64

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
