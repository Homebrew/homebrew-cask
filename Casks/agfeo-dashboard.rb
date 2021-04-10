cask "agfeo-dashboard" do
  version "1.8.14,8A73B7762D0958D9C12586A30052AFE8"
  sha256 "1bf4fe2b352573f344383e5b63113b62c296b7630863f1878ffb584c7171a1eb"

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
