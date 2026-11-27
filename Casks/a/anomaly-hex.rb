cask "anomaly-hex" do
  version "3.5.2"
  sha256 "76ba18a28c0d9ac7de14f9378205cc30d969732b9d5c10174c6a9f2e8d9ad250"

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
