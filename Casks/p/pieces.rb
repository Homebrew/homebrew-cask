cask "pieces" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "4.4.5"
  sha256 :no_check

  url "https://builds.pieces.app/stages/production/pieces_for_x/macos#{arch}/download"
  name "Pieces"
  desc "Code snippets, screenshots and workflow context"
  homepage "https://pieces.app/"

  livecheck do
    url "https://builds.pieces.app/stages/production/pieces_for_x/sparkle#{livecheck_arch}"
    strategy :sparkle
  end

  auto_updates true
  depends_on cask: "pieces-os"

  app "Pieces.app"

  uninstall quit: "com.pieces.x"

  zap trash: [
    "~/Library/Application Support/com.pieces.x",
    "~/Library/com.pieces.pfd",
    "~/Library/HTTPStorages/com.pieces.x",
    "~/Library/Preferences/com.pieces.x.plist",
    "~/Library/Saved Application State/com.pieces.x.savedState",
  ]
end
