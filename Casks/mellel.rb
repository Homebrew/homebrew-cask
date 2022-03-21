cask "mellel" do
  version "5.1.0,51012"
  sha256 "89fb9e8240ad407fbf3ca8f2949356ec58af7acf1d5f23884f534399d3dfeda4"

  url "https://d1riogbqt3a9uw.cloudfront.net/mellel_#{version.csv.second}.dmg",
      verified: "d1riogbqt3a9uw.cloudfront.net"
  name "Mellel"
  desc "Advanced word processor built for long and complex documents"
  homepage "https://www.mellel.com/"

  livecheck do
    url "http://www.mellelupdate.com/mellelupdate/latest_update.xml"
    strategy :page_match do |page|
      page.scan(%r{<full-version>(\d+(?:\.\d+)+)\.(\d+)</full-version>}i)
          .map { |match| "#{match[0]},#{match[1]}" }
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
