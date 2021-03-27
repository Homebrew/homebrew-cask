cask "mnemosyne" do
  version "2.7.3"
  sha256 "72b241b88bb286bdfa4aa9117fb75fc7bd53bc773f81e7f2b646841390845462"

  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg",
      verified: "sourceforge.net/mnemosyne-proj/"
  appcast "https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne"
  name "Mnemosyne"
  homepage "https://mnemosyne-proj.org/"

  app "Mnemosyne.app"
end
