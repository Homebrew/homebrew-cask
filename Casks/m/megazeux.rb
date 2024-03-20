cask "megazeux" do
  version "2.93"
  sha256 :no_check

  url "https://www.digitalmzx.com/download.php?latest=osx"
  name "MegaZeux"
  desc "ASCII-based game creation system"
  homepage "https://www.digitalmzx.com/"

  livecheck do
    url "https://github.com/AliceLR/megazeux"
    strategy :git
  end

  app "MegaZeux.app"
  artifact "Documentation", target: "~/Library/Application Support/MegaZeux/Documentation"

  zap trash: [
    "~/.megazeux-config",
    "~/Library/Application Support/MegaZeux",
  ]
end
