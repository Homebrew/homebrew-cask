cask "talon" do
  version "0.4.0"
  sha256 :no_check

  url "https://talonvoice.com/dl/latest/talon-mac.dmg"
  name "Talon"
  desc "Enables you to control your computer with voice, eye tracking, or noises"
  homepage "https://talonvoice.com/"

  livecheck do
    url "https://talonvoice.com/dl/latest/changelog.html"
    regex(/<h\d>\s*(\d+(?:\.\d+)+)/i)
  end

  app "Talon.app"

  caveats do
    license "https://talonvoice.com/EULA.txt"
  end
end
