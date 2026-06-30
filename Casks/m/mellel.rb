cask "mellel" do
  version "6.7.0,67001"
  sha256 "21a5c2131811d76a1ba0388cf441a1d3a9ca179ea26970480e28c4d3d2dddfa4"

  url "https://d1riogbqt3a9uw.cloudfront.net/mellel_#{version.csv.second}.dmg",
      verified: "d1riogbqt3a9uw.cloudfront.net/"
  name "Mellel"
  desc "Advanced word processor built for long and complex documents"
  homepage "https://www.mellel.com/"

  livecheck do
    url "http://www.mellelupdate.com/mellelupdate/latest_update.xml"
    regex(/^v?(\d+(?:\.\d{1,2})+)(?:\.(\d{3,}))?$/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//full-version").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Mellel #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.redlex.mellel",
    "~/Library/Application Support/com.redlex.mellel#{version.major}",
    "~/Library/Application Support/Mellel #{version.major}",
    "~/Library/Caches/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}.binarycookies",
    "~/Library/Preferences/com.redlex.mellel#{version.major}.plist",
    "~/Library/Saved Application State/com.redlex.mellel#{version.major}.savedState",
    "~/Library/Saved Application State/com.redlex.MellelUpdater.savedState",
  ]
end
