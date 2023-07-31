cask "bepo" do
  version "1.1rc2"
  sha256 "4c0cb9e058a5bdc3de8b6056525046c72976afad9b88298b74a9854cb427d56c"

  url "https://download.tuxfamily.org/dvorak/macosx/fr-dvorak-bepo-macosx-#{version}.dmg",
      verified: "download.tuxfamily.org/dvorak/macosx/"
  name "Bépo layout"
  desc "Keyboard layout designed to facilitate input of French and computer languages"
  homepage "https://bepo.fr/"

  livecheck do
    url "https://download.tuxfamily.org/dvorak/macosx/"
    regex(/href=.*?fr[._-]dvorak[._-]bepo[._-]macosx[._-]v?(\d+(?:\.\d+)+(?:rc\d+)?)\.dmg/i)
  end

  keyboard_layout "bepo #{version.gsub(/rc\d+/i, "")}.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
