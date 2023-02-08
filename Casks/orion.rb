cask "orion" do
  version "0.99,122"

  on_mojave do
    sha256 "7771ff6d39b4169e991233acc6ef14702ddf8c1603a151b32f2782d07e93a0ce"

    url "https://browser.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :mojave
  end
  on_catalina do
    sha256 "0a4788f91735faa57a091348855d974e07ae8356c1b944780338ec3c03d48cc6"

    url "https://browser.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :catalina
  end
  on_big_sur do
    sha256 "d2bf100f0f706df318dcc5807604f94e4864598bc45d6173d50cefc7327ca35b"

    url "https://browser.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :big_sur
  end
  on_monterey do
    sha256 "799cb362caad3020be49e836967eebf835a53ce167097853d2a37ae3cb3dbcda"

    url "https://browser.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :monterey
  end
  on_ventura do
    sha256 "635b32f4fdd5a8bb6da238eed6895b571633b965d1d381fd5b03003178b5b9d6"

    url "https://browser.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :ventura
  end

  name "Orion Browser"
  desc "WebKit based web browser"
  homepage "https://browser.kagi.com/"

  auto_updates true

  app "Orion.app"

  uninstall quit: "com.kagi.kagimacOS"

  zap trash: [
    "~/Library/Application Scripts/com.kagi.kagimacOS.ShareExtension",
    "~/Library/Application Support/Orion",
    "~/Library/Caches/com.kagi.kagimacOS",
    "~/Library/Containers/com.kagi.kagimacOS.ShareExtension",
    "~/Library/HTTPStorages/com.kagi.kagimacOS*",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
    "~/Library/WebKit/com.kagi.kagimacOS",
  ]
end
