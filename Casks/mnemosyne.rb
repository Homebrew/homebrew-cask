cask "mnemosyne" do
  version "2.7.3"
  sha256 "72b241b88bb286bdfa4aa9117fb75fc7bd53bc773f81e7f2b646841390845462"

  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg",
      verified: "sourceforge.net/mnemosyne-proj/"
  name "Mnemosyne"
  desc "Flash card tool"
  homepage "https://mnemosyne-proj.org/"

  livecheck do
    url "https://mnemosyne-proj.org/download-mnemosyne.php"
    regex(/Mnemosyne[._-]?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Mnemosyne.app"
end
