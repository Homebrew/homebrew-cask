cask "qutebrowser" do
  version "1.14.0"
  sha256 "84b83681170ae0046035704721e68cfa4793db81d39b984184d7f74b8b5ba50d"

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
