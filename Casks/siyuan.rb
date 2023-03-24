cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.0"
  sha256 arm:   "2d8e59f186df86ddc881d83377da62bf296a7110de60f297edf13e8a62896386",
         intel: "962e7f9c5d45259bf570035b33d974429b2d238b7ef4dd179d350be1430dd9e8"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
