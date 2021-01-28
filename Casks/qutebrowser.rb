cask "qutebrowser" do
  version "2.0.0"
  sha256 "c6fb92d9c6f168a725522bdb980e5e2558982eb1e237e1cb23bc22db3998a274"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg",
      verified: "github.com/qutebrowser/qutebrowser/"
  appcast "https://github.com/qutebrowser/qutebrowser/releases.atom"
  name "qutebrowser"
  desc "Keyboard-driven, vim-like browser based on PyQt5"
  homepage "https://www.qutebrowser.org/"

  app "qutebrowser.app"

  zap trash: [
    "~/Library/Application Support/qutebrowser",
    "~/Library/Caches/qutebrowser",
    "~/Library/Preferences/qutebrowser",
  ]
end
