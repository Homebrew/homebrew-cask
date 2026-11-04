cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "17.0.1"
  sha256 arm:   "6144cac83a6f4c5ab81a9391f2074804e472098a686925de7ad2085bf47a7c8a",
         intel: "b3ec752155d6390306bfe86de34e2661adde9f89bbd2937a16509c3aa8e94db2"

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
