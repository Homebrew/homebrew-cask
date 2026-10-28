cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "17.0"
  sha256 arm:   "49af39f736c5b38bb4323184a28744dfcd15c560eb5ee3193ef6f3cfc428e652",
         intel: "4fdb284197bd00f9f9f3d0c63369a5f184456779b279f303b2b8dd54c405e312"

  url "https://download.sweetscape.com/010EditorMac#{arch}Installer#{version}.dmg"
  name "010 Editor"
  desc "Text editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    regex(/Version:?\s*(\d+(?:\.\d+)+),\s*macOS/i)
  end

  depends_on :macos

  app "010 Editor.app"

  uninstall quit: "com.SweetScape.010Editor"

  zap trash: [
        "~/.config/SweetScape",
        "~/Library/Application Support/SweetScape",
        "~/Library/Saved Application State/com.SweetScape.010Editor.savedState",
      ],
      rmdir: "~/Documents/SweetScape"
end
