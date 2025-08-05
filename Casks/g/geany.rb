cask "geany" do
  arch arm: "_arm64"

  version "2.1"
  sha256 arm:   "13d6f0977c784193ffc1bad05e1a8b77f14f2a71f37ab158c788d33cb6203f80",
         intel: "9034a1bf89b83e6e0184dc2c6484133b128f0935905f08ec85464a58e43c46ba"

  url "https://download.geany.org/geany-#{version}_osx#{arch}.dmg"
  name "Geany"
  desc "Small and lightweight IDE"
  homepage "https://www.geany.org/"

  livecheck do
    url "https://geany.org/download/releases/"
    regex(/href=.*?geany[._-]v?(\d+(?:\.\d+)+)[._-]osx#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Geany.app"

  zap trash: [
    "~/.cache/geany",
    "~/.config/geany",
  ]
end
