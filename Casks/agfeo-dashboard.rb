cask "agfeo-dashboard" do
  version "1.2.0,A145F3A9D3FECE0BC12584F500300845"
  sha256 "c00cef11a7f916b6877a3e5877dcf847d6f338beb1ab3d4d30ea0465f0464b40"

  url "https://www2.agfeo.de/agfeo_web/dokulib.nsf/Anlage_w/#{version.after_comma}/$FILE/AGFEO-Dashboard_x64_agfeo_#{version.before_comma}.dmg"
  appcast "https://info.agfeo.de/agfeo_web/DokuLib.nsf/lu_04/5077_2"
  name "AGFEO Dashboard"
  homepage "https://www.agfeo.de/"

  depends_on macos: ">= :sierra"

  app "AGFEO-Dashboard.app"
end
