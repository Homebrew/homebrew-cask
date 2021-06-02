cask "qutebrowser" do
  version "2.2.3"
  sha256 "69e7ad57af0c2669aaa6787eb0cdc7fca076420a13f79320d71433e6d56c38a2"

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
