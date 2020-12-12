cask "ndm" do
  version "1.2.0"
  sha256 "7feea9270a35f5c3675abec49c6c38e83796f2a9c81040a190932d069e68a921"

  # github.com/720kb/ndm/ was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast "https://github.com/720kb/ndm/releases.atom"
  name "ndm"
  desc "Desktop manager for the Node.js Package Manager (NPM)"
  homepage "https://720kb.github.io/ndm/"

  app "ndm.app"

  zap trash: [
    "~/Library/Application Support/ndm",
    "~/Library/Preferences/net.720kb.ndm.helper.plist",
    "~/Library/Preferences/net.720kb.ndm.plist",
    "~/Library/Saved Application State/net.720kb.ndm.savedState",
  ]
end
