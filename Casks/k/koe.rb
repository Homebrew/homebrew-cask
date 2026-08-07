cask "koe" do
  version "1.0.29"
  sha256 "d289f2e08243a2393aacbb6aeefa42b651e5cb68e0f936d723371e5141e8a71b"

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
