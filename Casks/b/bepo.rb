cask "bepo" do
  version "1.1rc2"
  sha256 "4c0cb9e058a5bdc3de8b6056525046c72976afad9b88298b74a9854cb427d56c"

  url "https://cdn.bepo.fr/macosx/fr-dvorak-bepo-macosx-#{version}.dmg"
  name "Bépo layout"
  desc "Keyboard layout designed to facilitate input of French and computer languages"
  homepage "https://bepo.fr/"

  livecheck do
    url "https://bepo.fr/wiki/Mod%C3%A8le:Version_actuelle/Mac"
    regex(%r{href="/wiki/Version_?(\d+(?:\.\d+)+(?:rc\d+)?)"}i)
  end

  keyboard_layout "bepo #{version.gsub(/rc\d+/i, "")}.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
