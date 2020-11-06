cask "feed-the-beast" do
  version "202007161516-479dedc615-release"
  sha256 "666fbc76cf2c65d9e409fd5dd23ed072efb77babb34ad822f6d682bf19f5843e"

  # apps.modpacks.ch/FTBApp/ was verified as official when first introduced to the cask
  url "https://apps.modpacks.ch/FTBApp/release/#{version}/FTBA_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://www.feed-the-beast.com/app_release.xml"
  name "Feed the Beast"
  homepage "https://www.feed-the-beast.com/"

  app "FTBApp.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
