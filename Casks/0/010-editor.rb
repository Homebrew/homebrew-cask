cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "17.0.2"
  sha256 arm:   "116e188dfd6308907220e1812efe3527569a40235a03708069b7f708fbd106cb",
         intel: "1869bf4743a6bd2b3d0c3d76a9f98322947ffe7ada40dcbc8bb365f43285d0f4"

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
