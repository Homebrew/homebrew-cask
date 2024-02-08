cask "thetimemachinemechanic" do
  version "2.02,2024.01"
  sha256 "0efd7eb447224cf84af514ce677de5139b2f71ac78f642f1a6cfca4ac89e8ce9"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/t2m2#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "The Time Machine Mechanic"
  name "T2M2"
  desc "Time Machine log viewer & status inspector"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/t2m2(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "t2m2#{version.csv.first.major}#{version.csv.first.minor}/TheTimeMachineMechanic.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.TheTimeMachineMechanic",
    "~/Library/Preferences/co.eclecticlight.TheTimeMachineMechanic.plist",
    "~/Library/Saved Application State/co.eclecticlight.TheTimeMachineMechanic.savedState",
  ]
end
