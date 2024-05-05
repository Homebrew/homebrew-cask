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
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='T2M22']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text&.strip
      match = item.elements["key[text()='URL']"]&.next_element&.text&.strip&.match(regex)
      next if version.blank? || match.blank?

      "#{version},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "t2m2#{version.csv.first.major}#{version.csv.first.minor}/TheTimeMachineMechanic.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.TheTimeMachineMechanic2",
    "~/Library/HTTPStorages/co.eclecticlight.TheTimeMachineMechanic2",
    "~/Library/Preferences/co.eclecticlight.TheTimeMachineMechanic2.plist",
    "~/Library/Saved Application State/co.eclecticlight.TheTimeMachineMechanic2.savedState",
  ]
end
