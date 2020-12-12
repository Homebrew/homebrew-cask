cask "qutebrowser" do
  version "1.14.1"
  sha256 "b2e28cdb58ee581c03ec5f3b0935606984197370a1e1f99638f8a661ef5497a8"

  # github.com/qutebrowser/qutebrowser/ was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
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
