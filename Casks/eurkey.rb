cask "eurkey" do
  version :latest
  sha256 :no_check

  # github.com/jonasdiemer/EurKEY-Mac/ was verified as official when first introduced to the cask
  url "https://github.com/jonasdiemer/EurKEY-Mac/archive/master.zip"
  name "EurKEY keyboard layout"
  desc "Keyboard Layout for Europeans, Coders and Translators"
  homepage "https://eurkey.steffen.bruentjen.eu/"

  artifact "EurKEY-Mac-master/EurKEY.icns", target: "/Library/Keyboard Layouts/EurKEY.icns"
  artifact "EurKEY-Mac-master/EurKEY.keylayout", target: "/Library/Keyboard Layouts/EurKEY.keylayout"
end
