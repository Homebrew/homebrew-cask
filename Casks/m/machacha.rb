cask "machacha" do
  version "4.0.1"
  sha256 :no_check

  url "http://www.julifos.com/soft/machacha/machacha.dmg"
  name "MacHacha"
  desc "Split archives into smaller parts and join them when requested"
  homepage "http://www.julifos.com/soft/machacha/"

  deprecate! date: "2024-07-05", because: :unmaintained

  app "MacHacha.app"

  zap trash: [
    "~/Library/Preferences/com.pescadosweb.machacha.plist",
    "~/Library/Saved Application State/com.pescadosweb.machacha.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
