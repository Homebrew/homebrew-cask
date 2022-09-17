cask "feed-the-beast" do
  version "202209161632,2afab8f106"
  sha256 "e74eb4b92a501f2cb471dc0259499cb71918006c3bfdf2b2ab0263ed907a6892"

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
