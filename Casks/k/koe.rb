cask "koe" do
  version "1.0.17"
  sha256 "63c3a2e9deb68e12bb958c55c582d9e4578ba674507f3654cb83a981e2a02eba"

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
