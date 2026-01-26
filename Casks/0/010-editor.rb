cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "16.0.3"
  sha256 arm:   "0a66ad414546247a62db76f90b76deb4be9890fdfe80e03da7ec5f51bb0ac62d",
         intel: "bf541d5fea2c925097b60d07a13dfe1e710bf806d58729c9d1703e8c0edb5f73"

  url "https://download.sweetscape.com/010EditorMac#{arch}Installer#{version}.dmg"
  name "010 Editor"
  desc "Text editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    regex(/Version:?\s*(\d+(?:\.\d+)+),\s*macOS/i)
  end

  depends_on macos: ">= :big_sur"

  app "010 Editor.app"

  zap trash: [
        "~/.config/SweetScape",
        "~/Library/Application Support/SweetScape",
        "~/Library/Saved Application State/com.SweetScape.010Editor.savedState",
      ],
      rmdir: "~/Documents/SweetScape"
end
