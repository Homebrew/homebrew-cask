cask "mellel" do
  version "6.7.1,67102"
  sha256 "c29a8f555a43b504fa4ecbfa186cfa526ac29a1f1a67a6b25d48014f4af7400d"

  url "https://d1riogbqt3a9uw.cloudfront.net/mellel_#{version.csv.second}.dmg"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.redlex.mellel#{version.major}.sfl*",
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
