cask "qutebrowser" do
  version "2.3.1"
  sha256 "1b8d534a6afee99b9c0db99b371384b768b4ffa5f3a793290d5eede498607789"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg",
      verified: "github.com/qutebrowser/qutebrowser/"
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
