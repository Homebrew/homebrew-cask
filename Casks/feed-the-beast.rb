cask "feed-the-beast" do
  version "202011261605-2be2c6a678-release"
  sha256 "47ae66483fab1837e7bc8ae0f9a23a883227ab2db87dfef3b7e7dfd429e2e4d6"

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
