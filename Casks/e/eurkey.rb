cask "eurkey" do
  version "1.2"
  sha256 :no_check

  url "https://github.com/jonasdiemer/EurKEY-Mac/archive/refs/heads/master.tar.gz",
      verified: "github.com/jonasdiemer/EurKEY-Mac/"
  name "EurKEY keyboard layout"
  desc "Keyboard Layout for Europeans, Coders and Translators"
  homepage "https://eurkey.steffen.bruentjen.eu/"

  deprecate! date: "2026-04-11", because: :discontinued

  keyboard_layout "EurKEY-Mac-master/EurKEY.icns"
  keyboard_layout "EurKEY-Mac-master/EurKEY.keylayout"

  # No zap stanza required

  caveats do
    reboot
  end
end
