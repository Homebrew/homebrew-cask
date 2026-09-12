cask "omniwm" do
  version "0.6.10"
  sha256 "10eef893077d210d1545f5775a2b92b2f366df61db4fbd8abc22b3ab1d08c4af"

  url "https://github.com/BarutSRB/OmniWM/releases/download/v#{version}/OmniWM-v#{version}.zip"
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
