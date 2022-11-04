cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.2"
  sha256 arm: "83009f585572b76c7992c5a24180145ebd5aedf8793092de53b142306c39acf8",
      intel: "0e62740c3e64ddb920166018fc89f8fdd546bab8a4615b32f3bd3f9514976e5d"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash for Windows"
  desc "Cross-Platform Clash GUI based on tauri"
  homepage "https://github.com/zzzgydi/clash-verge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"

  zap trash: [
    "~/.config/clash-verge",
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]
end
