cask "mnemosyne" do
  version "2.7.1"
  sha256 "c7567a0f007cdaf16e8649e0bc24a7f265bfcb77be210f481752a6a51ee47997"

  # sourceforge.net/mnemosyne-proj/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast "https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne"
  name "Mnemosyne"
  homepage "https://mnemosyne-proj.org/"

  app "Mnemosyne.app"
end
