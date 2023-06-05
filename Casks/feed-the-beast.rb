cask "feed-the-beast" do
  version "202302201814,1c8edb0091"
  sha256 "92664c2145e1104f4a1cfa71c46a079ef0d969715159d90abdbee731a39d7aa8"

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
