cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "16.0.2"
  sha256 arm:   "82d7d3abf7bf0474b1902bff420fe8f0d6a86a8f88f1fcca3a6181d4f5cf4b02",
         intel: "2b2ec8bcb785a20c7a4766008ab01234d2029442fdfccd1e1320b16c602dd2c5"

  url "https://download.sweetscape.com/010EditorMac#{arch}Installer#{version}.dmg"
  name "010 Editor"
  desc "Text editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    regex(/Version:?\s*(\d+(?:\.\d+)+),\s*macOS/i)
  end

  app "010 Editor.app"

  zap trash: [
        "~/.config/SweetScape",
        "~/Library/Application Support/SweetScape",
        "~/Library/Saved Application State/com.SweetScape.010Editor.savedState",
      ],
      rmdir: "~/Documents/SweetScape"
end
