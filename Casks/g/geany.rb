cask "geany" do
  arch arm: "_arm64"

  version "2.0"
  sha256 arm:   "1d383519d5ef7d3a2d17483a816250776158bfc26590aa4914f8634d81f112d7",
         intel: "c42991517d1a94920c8f39f159d6707ee093347321e5acb8ef6a11fd094adf4e"

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
