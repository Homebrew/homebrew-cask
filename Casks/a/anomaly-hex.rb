cask "anomaly-hex" do
  version "3.5.0"
  sha256 "fd4892a9c72185effc00639cb3f2c723d24b7850ca89ac57cc69b068a2d64312"

  url "https://github.com/anomalyco/hex/releases/download/v#{version}/hex-#{version}-macos-arm64.dmg"
  name "Hex"
  desc "On-device voice dictation"
  homepage "https://anoma.ly/hex/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"
  binary "#{appdir}/Hex.app/Contents/MacOS/hex"

  uninstall quit: "anomaly.hex"

  zap trash: [
        "~/Library/Application Scripts/com.kitlangton.Hex",
        "~/Library/Application Support/hex",
        "~/Library/Caches/anomaly.hex",
        "~/Library/Containers/com.kitlangton.Hex",
        "~/Library/HTTPStorages/anomaly.hex",
        "~/Library/Preferences/anomaly.hex.plist",
        "~/Library/Saved Application State/anomaly.hex.savedState",
      ],
      rmdir: "~/.config/hex"
end
