cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.1"
  sha256 arm:   "84912d381d835a912a11c092e74fef7ad5c13e8563d94dedb1f5e9ad7e9b2b3a",
         intel: "fac56a672afd4418974fb04d360c24a2d6ec50ab703c23d615eeff40c8b44f39"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta-macos-#{arch}.dmg",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  app "Pinta.app"

  zap trash: [
    "~/Library/Preferences/com.ximian.pinta.plist",
    "~/Library/Saved Application State/com.ximian.pinta.savedState",
  ]
end
