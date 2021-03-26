cask "feed-the-beast" do
  version "202101041428-54016a89dc"
  sha256 "e2ad72443d003c8b46a4c973bbb711de71cdcb8ac51dc90289e6d4e438196c65"

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
