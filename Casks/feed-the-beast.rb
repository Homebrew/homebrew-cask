cask "feed-the-beast" do
  version "202104081147-534c2a1ea3"
  sha256 "6d3be8b29e0ae4d8c66e179d65eba0bd0ebf8a285cee2651d54f7e8778daa814"

  url "https://apps.modpacks.ch/FTBApp/release/#{version}-release/FTBA_macos_#{version}-release.dmg",
      verified: "apps.modpacks.ch/FTBApp/"
  name "Feed the Beast"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://www.feed-the-beast.com/app_release.xml"
    regex(/FTBA_macos_(\d+-[a-f0-9]+)-release\.dmg/i)
  end

  app "FTBApp.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
