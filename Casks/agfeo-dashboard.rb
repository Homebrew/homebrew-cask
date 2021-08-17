cask "agfeo-dashboard" do
  version "1.8.21,8C1C8DFB07B91220C12586FF00439DF6"
  sha256 "566d034f629fe62a960edf299e9a29dd26889b18c83e229c0ffbb19eae8f0acd"

  url "https://www2.agfeo.de/agfeo_web/dokulib.nsf/Anlage_w/#{version.after_comma}/$FILE/AGFEO-Dashboard_x64_agfeo_#{version.before_comma}.dmg"
  name "AGFEO Dashboard"
  desc "CTI/UC cockpit for your HyperVoice and ES communication system"
  homepage "https://agfeo.de/produkt/agfeo-dashboard/"

  livecheck do
    url "https://info.agfeo.de/agfeo_web/hp3.nsf/softwareN_d?OpenForm&cat=AGFEODashboard"
    strategy :page_match do |page|
      match = page.match(%r{/([0-9a-f]+)/\$FILE/AGFEO-Dashboard_x64_agfeo_(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "AGFEO-Dashboard.app"
end
