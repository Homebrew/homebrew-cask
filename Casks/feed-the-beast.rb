cask "feed-the-beast" do
  version "202112101445,bdf8bdbaca"
  sha256 "26588e020c85b64a31e8143c8e5537b500c1f2ba880f1a9c5d89be2c4bd672c8"

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
