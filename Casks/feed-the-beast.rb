cask "feed-the-beast" do
  version "202111051727,fc8797cf31"
  sha256 "f169e80c3bf6289ca5f810ba44b4d0fe92720150eb8b301ab631078b01a4b205"

  url "https://apps.modpacks.ch/FTBApp/release/#{version.before_comma}-#{version.after_comma}-release/FTBA_macos_#{version.before_comma}-#{version.after_comma}-release.dmg",
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
