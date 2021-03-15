cask "qutebrowser" do
  version "2.1.0"
  sha256 "a9c752eec5c14b1d21b25de189c15c6e940b3051ab9d7b36c51f3d712cd7e57f"

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
