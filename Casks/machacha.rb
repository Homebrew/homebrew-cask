cask "machacha" do
  version "4.0.1"
  sha256 :no_check

  url "http://www.julifos.com/soft/machacha/machacha.dmg"
  name "MacHacha"
  homepage "http://www.julifos.com/soft/machacha/"

  app "MacHacha.app"

  zap trash: [
    "~/Library/Preferences/com.pescadosweb.machacha.plist",
    "~/Library/Saved Application State/com.pescadosweb.machacha.savedState",
  ]
end
