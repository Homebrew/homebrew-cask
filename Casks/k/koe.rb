cask "koe" do
  version "1.0.23"
  sha256 "00fdd20292730a788c8d2bb9b9b79f0684bf74db8ba2990942c7a644925c7462"

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
