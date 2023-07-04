cask "feed-the-beast" do
  version "202306291311,6ccb547d37"
  sha256 "d545c9dd3dcf8a20af5608f7eed5d451b8410819fe391e2c783819a159c7c345"

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
