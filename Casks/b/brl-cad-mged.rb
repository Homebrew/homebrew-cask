cask "brl-cad-mged" do
  version "7.24.0"
  sha256 "5fe9eb9f5a2eb5544cf459b02e7e880040e02d1312d04c2207b90a731ebd8f0f"

  url "https://downloads.sourceforge.net/brlcad/BRL-CAD%20for%20Mac%20OS%20X/#{version}/BRL-CAD%20#{version}.dmg",
      verified: "downloads.sourceforge.net/brlcad/"
  name "BRL-CAD"
  desc "Solid modelling system"
  homepage "https://brlcad.org/"

  disable! date: "2024-07-09", because: :discontinued

  depends_on cask: "xquartz"

  app "BRL-CAD : MGED #{version}.app"

  caveats do
    requires_rosetta
  end
end
