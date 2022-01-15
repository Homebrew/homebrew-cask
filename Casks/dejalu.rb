cask "dejalu" do
  version "1.0,217"
  sha256 "ee1b08c2d6698b1938e0044b21a0cc6746543d2853048234b5eca91169db233b"

  url "https://d.dejalu.me/dejalu-eKTEtTljm4/dejalu-#{version.csv.second}/DejaLu-#{version.csv.second}.zip"
  name "DejaLu"
  homepage "https://dejalu.me/"

  livecheck do
    url "https://d.dejalu.me/dejalu-eKTEtTljm4/sparkle.xml"
    strategy :sparkle
  end

  app "DejaLu.app"
end
