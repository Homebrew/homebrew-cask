cask "feed-the-beast" do
  version "202204061044,ef5313e696"
  sha256 "0101632ada0019a954dabfd5b3bfab4f88bbfd8ad261a8a08d1f893f9b80a519"

  url "https://apps.modpacks.ch/FTBApp/release/#{version.csv.first}-#{version.csv.second}-release/FTBA_macos_#{version.csv.first}-#{version.csv.second}-release.dmg",
      verified: "apps.modpacks.ch/FTBApp/"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://www.feed-the-beast.com/app_release.xml"
    regex(/FTBA[._-]macos[._-](\d+)[._-](\h+)[._-]release\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "FTBApp.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
