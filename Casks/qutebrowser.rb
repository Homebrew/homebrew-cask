cask "qutebrowser" do
  version "2.0.1"
  sha256 "4ce1912de5fb9b25d64ce812d06354a54832b3edb7d7504b294c5e3b9e062bcf"

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
