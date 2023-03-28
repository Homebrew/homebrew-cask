cask "eurkey" do
  version :latest
  sha256 :no_check

  url "https://github.com/jonasdiemer/EurKEY-Mac/archive/master.zip",
      verified: "github.com/jonasdiemer/EurKEY-Mac/"
  name "EurKEY keyboard layout"
  desc "Keyboard Layout for Europeans, Coders and Translators"
  homepage "https://eurkey.steffen.bruentjen.eu/"

  keyboard_layout "EurKEY-Mac-master/EurKEY.icns"
  keyboard_layout "EurKEY-Mac-master/EurKEY.keylayout"

  caveats do
    reboot
  end
end
