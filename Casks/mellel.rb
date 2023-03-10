cask "mellel" do
  version "5.1.4,51406"
  sha256 "01dccf99a96a3b8c67c450074cb327c6c222e9a47e83edfcc9d597716918d631"

  url "https://d1riogbqt3a9uw.cloudfront.net/mellel_#{version.csv.second}.dmg",
      verified: "d1riogbqt3a9uw.cloudfront.net"
  name "Mellel"
  desc "Advanced word processor built for long and complex documents"
  homepage "https://www.mellel.com/"

  livecheck do
    url "http://www.mellelupdate.com/mellelupdate/latest_update.xml"
    regex(%r{<full-version>v?(\d+(?:\.\d{1,2})+)(?:\.(\d{3,}))?</full-version>}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  auto_updates true

  app "Mellel #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.redlex.mellel",
    "~/Library/Application Support/Mellel #{version.major}",
    "~/Library/Application Support/com.redlex.mellel#{version.major}",
    "~/Library/Caches/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}.binarycookies",
    "~/Library/Preferences/com.redlex.mellel#{version.major}.plist",
    "~/Library/Saved Application State/com.redlex.MellelUpdater.savedState",
    "~/Library/Saved Application State/com.redlex.mellel#{version.major}.savedState",
  ]
end
