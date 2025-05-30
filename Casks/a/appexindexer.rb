cask "appexindexer" do
  version "108,2025.04"
  sha256 "9ee82b423ffdf998d75f945599bfb4e21abe6185591dc77e682f853cd975121f"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/appexindexer#{version.csv.first.no_dots}.zip"
  name "AppexIndexer"
  desc "List and inspect installed app extensions"
  homepage "https://eclecticlight.co/2025/04/10/discover-appexes-with-appexindexer/"

  livecheck do
    # Update to match other Eclectic Light casks if AppexIndexer is added to https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist
    url :homepage
    regex(%r{href=.*?/wp-content/uploads/(\d+)/(\d+)/appexindexer(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :sonoma"

  app "appexindexer#{version.csv.first.no_dots}/AppexIndexer.app"

  zap trash: "~/Library/Preferences/co.eclecticlight.AppexIndexer.plist"
end
