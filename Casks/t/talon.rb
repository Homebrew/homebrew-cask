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

  depends_on macos: ">= :high_sierra"

  app "Talon.app"

  zap trash: [
    "~/.talon",
    "~/Library/HTTPStorages/com.talonvoice.Talon",
    "~/Library/Preferences/com.talonvoice.Talon.plist",
  ]

  caveats do
    license "https://talonvoice.com/EULA.txt"
  end
end
