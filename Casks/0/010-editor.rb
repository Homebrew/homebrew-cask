cask "010-editor" do
  arch arm: "ARM64", intel: "64"

  version "16.0.4"
  sha256 arm:   "fb253925d3cd4b605f8992ec04bcb20be89e54da9b2166daded7819532035ad9",
         intel: "bec2345607091a57894d0e42d496a20a410b7d67f08058720b1fba8f99a57489"

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
