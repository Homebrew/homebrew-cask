cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.9"
  sha256 arm:   "4ae88171e4a87184391b4b32f6e2f48bd677c2928ed61b16b74e1fc4394acc90",
         intel: "ef1393e614385445021e70b41be59246474763aeab3015eeaf5204d4b8d56763"

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
