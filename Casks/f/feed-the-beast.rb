cask "feed-the-beast" do
  version "202312041956,1375ba067c"
  sha256 "cb6ff90aea75d192c0749c37707348f9a5af12e79c30c5c75cf9ea55bba714d1"

  url "https://apps.modpacks.ch/FTBApp/release/#{version.csv.first}-#{version.csv.second}/FTBA_macos_#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "apps.modpacks.ch/FTBApp/"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://meta.feed-the-beast.com/v1/app/versions"
    regex(/FTBA[._-]macos[._-](\d+)[._-](\h+)\.dmg/i)
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
