cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "16.0.1"
  sha256 arm:   "901ad84b14cdcf4d693da45f299584e9d0e800282ce6d95f6fe33a03b474568e",
         intel: "abf95f7b82166096f1a06541423bbeb7fc35dd42375c769534f7538e7210170f"

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
