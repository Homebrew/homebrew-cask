cask "keyboard-cleaner" do
  version "1.2"
  sha256 :no_check

  url "https://jan.prima.de/u/Keyboard-Cleaner-64bit.zip"
  name "Keyboard Cleaner"
  desc "Desktop shield and keystroke interceptor"
  homepage "https://jan.prima.de/~jan/plok/archives/48-Keyboard-Cleaner.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Keyboard Cleaner.app"

  caveats do
    requires_rosetta
  end
end
