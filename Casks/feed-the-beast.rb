cask "feed-the-beast" do
  version "202012101153-ce008c54b4-release"
  sha256 "b5d26e4384bbe06f5b9783529d1682b4091bac199c9186598af5f2bf4e7d7115"

  url "https://apps.modpacks.ch/FTBApp/release/#{version}/FTBA_macos_#{version.dots_to_underscores}.dmg",
      verified: "apps.modpacks.ch/FTBApp/"
  appcast "https://www.feed-the-beast.com/app_release.xml"
  name "Feed the Beast"
  homepage "https://www.feed-the-beast.com/"

  app "FTBApp.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
