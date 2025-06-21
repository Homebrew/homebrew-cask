cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.10"
  sha256 arm:   "431d1b299a17b0285bc6b00d088c512e61f532677820164c4762da997735c723",
         intel: "fa9d7d3f8c4225f6dd63c8909d5bf10246ec1dbb7779009478f2b645ec00e8ee"

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
