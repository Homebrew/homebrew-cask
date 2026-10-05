cask "sonos" do
  version "90.0-81181,7GphjB3HVD"
  sha256 "f4c49635cb06cf615c2b3bebd35fbf3e3abeb7a38dbc4c5519784070c0dcdc3b"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S2"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/", browsed: "2026-09-04"

  livecheck do
    url "https://update.sonos.com/firmware/swgen/2/latest/update.upm?sonosid=Anonymous&householdid=nohhid&cmaj=81&cmin=0&cbld=52"
    regex(%r{-([^-/]+)-[A-Z]{2}-\d+/}i)
    strategy :xml do |xml, regex|
      xml.get_elements("//image[@model='4' and not(@submodel_min) and not(@fromver_min)]").filter_map do |item|
        version = item.attributes["version"]
        token = item.text&.[](regex, 1)
        next if version.blank? || token.blank?

        "#{version},#{token}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Sonos.app"

  uninstall quit: "com.sonos.macController2"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Sonos_*.plist",
    "~/Library/Application Support/SonosV2",
    "~/Library/Caches/com.sonos.macController2",
    "~/Library/HTTPStorages/com.sonos.macController2",
    "~/Library/Logs/Sonos*",
    "~/Library/Preferences/com.sonos.macController2.plist",
  ]
end
