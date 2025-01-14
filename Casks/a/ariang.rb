cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.8"
  sha256 arm:   "c1d736f609a3c96f05d99437c62031ea839b41710bdb715d498e025ede17f185",
         intel: "1a441eda861a34d4b8ae52604ee28a1ff8c5741b24b79ee7300b7b8471ad2ed9"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-#{arch}.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  depends_on macos: ">= :high_sierra"

  app "AriaNg Native.app"

  zap trash: [
    "~/Library/Preferences/net.mayswind.ariang.plist",
    "~/Library/Saved Application State/net.mayswind.ariang.savedState",
  ]
end
