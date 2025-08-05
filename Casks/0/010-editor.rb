cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "16.0"
  sha256 arm:   "0ad13106ebba10bf2296adfe82dc233709ccc5790a80f76b937e2d62f8cdda9b",
         intel: "4d66ad495aa6f5af9b54b5ed26389602d91c07ba99aa8789ec69abeb65d4573e"

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
