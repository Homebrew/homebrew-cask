cask "010-editor" do
  version "14.0.1"
  sha256 "a82255a458541feb2ece91b7dbc9ce4d404c95bc0794cc32c9eecc8d17d7cf59"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
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

  caveats do
    requires_rosetta
  end
end
