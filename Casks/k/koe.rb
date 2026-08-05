cask "koe" do
  version "1.0.25"
  sha256 "5c4b997dd1b39fc24a28dd8fe38ed193a30c4da8903a8d6027b7d027135307fc"

  url "https://github.com/missuo/koe/releases/download/v#{version}/Koe-macOS-arm64.zip"
  name "Koe"
  desc "Zero-GUI voice input tool"
  homepage "https://github.com/missuo/koe"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Koe.app"
  binary "#{appdir}/Koe.app/Contents/MacOS/koe-cli", target: "koe"

  zap trash: [
    "~/.koe",
    "~/Library/Caches/nz.owo.koe",
    "~/Library/HTTPStorages/nz.owo.koe",
    "~/Library/HTTPStorages/nz.owo.koe.binarycookies",
    "~/Library/Preferences/nz.owo.koe.plist",
  ]
end
