cask "feed-the-beast" do
  version "202307221435,df4347b682"
  sha256 "f1552d68f0a3dc57efdd2b7f6e371fd730fbb724a0d7782dd234031ba1a64a15"

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
