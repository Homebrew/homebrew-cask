cask "gpower" do
  version "3.1.9.6"
  sha256 "841390e00110ccdd5201f334af985b54837b9f9b4ffb3151d49e28efb9bb3964"

  url "https://www.psychologie.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast "https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower.html"
  name "G*Power"
  desc "Tool to compute statistical power analyses"
  homepage "https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower.html"

  app "G*Power.app"
end
