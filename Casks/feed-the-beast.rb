cask "feed-the-beast" do
  version "202105051818-5b1f30277f"
  sha256 "6674177e2bd8cb608c5574b3077744762cd49dec89186c073e217dedc78fb275"

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
