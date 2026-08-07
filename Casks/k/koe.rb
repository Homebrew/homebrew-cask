cask "koe" do
  version "1.0.27"
  sha256 "c51a9ace35b9946458beaef5c3f135cf0a48c9c5f5203f9790658b9f711c393b"

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
