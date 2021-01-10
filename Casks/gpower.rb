cask "gpower" do
  version "3.1.9.6"
  sha256 "3faabed05929251901da704205a34385cfe4fc7516ba31f92e1cd9ac8086e572"

  url "https://www.psychologie.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  name "G*Power"
  desc "Tool to compute statistical power analyses"
  homepage "https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower.html"

  livecheck do
    url "https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower.html"
    strategy :page_match
    regex(%r{href=.*?/GPowerMac_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "G*Power.app"
end
