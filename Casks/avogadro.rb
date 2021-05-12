cask "avogadro" do
  version "1.90.0"
  sha256 "71392555d2d38a486ea58d4a522304b59855fa8c3f71d88316bf3828f7a064da"

  url "https://downloads.sourceforge.net/avogadro/avogadro2/Avogadro2-#{version}-Darwin.dmg",
      verified: "sourceforge.net/avogadro/avogadro2/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"
end
