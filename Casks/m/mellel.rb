cask "mellel" do
  version "6.5.0,65003"
  sha256 "9809aadfe035ddb8c2a1f48e72833bf949d81c36c50f68b35426919621902c58"

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
  depends_on macos: ">= :high_sierra"

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
