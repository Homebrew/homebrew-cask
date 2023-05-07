cask "macos-keyboard-layout-german-programming" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/MickL/macos-keyboard-layout-german-programming/archive/master.zip"
  name "MacOS keyboard layout programming"
  desc "Keyboard layout for programming while keeping as many habits of german-keyboard-usage as possible"
  homepage "https://github.com/MickL/macos-keyboard-layout-german-programming"

  livecheck do
    url :url
    strategy :extract_plist
  end

  keyboard_layout "macos-keyboard-layout-german-programming-master/src/Deutsch - Programming.bundle"

  caveats do
    reboot
  end
end
