cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.1-1"
  sha256 arm:   "6e454fc4b07db0d438663e11d4ae4a4e1af58b241f485e0e8de0502126fae6ba",
         intel: "cbde9b39e4037e4bfaba8704b03542670eb719e5ccf77b79c22a07ee27e7c9c6"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
