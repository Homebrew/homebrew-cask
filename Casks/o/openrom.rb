cask "openrom" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.5"
  sha256 arm:   "c66e28b17cf98dc4e531e204c4bbffd1f78243115596670a08a404b0a15a1aa4",
         intel: "16c91281bad9a5cc77adf9b23fe2c046c3155235abcb63db183539f3355d3128"

  url "https://github.com/M5Devs/OpenROM/releases/download/v#{version}/OpenROM-v#{version}_macOS_#{arch}.zip"
  name "OpenROM"
  desc "Universal retro gaming and ROM management toolkit"
  homepage "https://github.com/M5Devs/OpenROM"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  container nested: "OpenROM-v#{version}_macOS_#{arch}.dmg"

  app "OpenROM.app"

  zap trash: [
    "~/Library/Application Support/OpenROM",
    "~/Library/Preferences/com.m5dev.openrom.plist",
  ]
end
