cask "010-editor" do
  version "15.0.2"
  sha256 "459b4557701b13929fcd6d7cbac5b4152fc09d7f147adb3f46455ac8100e0d0e"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  name "010 Editor"
  desc "Text editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    regex(/Version:?\s*(\d+(?:\.\d+)+),\s*macOS/i)
  end

  no_autobump! because: :requires_manual_review

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
