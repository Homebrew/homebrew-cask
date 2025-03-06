cask "hoppscotch" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.2.1-0"
  sha256 arm:   "2b8929feff4582716163d7e9abc20522b19644f2ba0bd9fe49637a43f1455f38",
         intel: "1bb1ca7d63013a27d9e2fb996fc789e4f284152b92613ec54d0ba3dc8612b442"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
